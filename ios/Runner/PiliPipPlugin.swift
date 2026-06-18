import AVFoundation
import AVKit
import Flutter
import MediaPlayer
import UIKit

final class PiliPipPlugin: NSObject, FlutterPlugin {
  private static let channelName = "piliplus/pip"

  private let channel: FlutterMethodChannel
  private var controller: AVPictureInPictureController?
  private var player: AVPlayer?
  private var playerLayer: AVPlayerLayer?
  private var sourceView: PlayerLayerView?
  private var currentVideoUrl: String?
  private var statusObservation: NSKeyValueObservation?
  private var possibleObservation: NSKeyValueObservation?
  private var pendingStart = false
  private var shouldPlayWhenPipStarts = false
  private var isActive = false
  private var isLive = false
  private var durationMilliseconds = 0
  private var positionMilliseconds = 0
  private var remoteCommandsConfigured = false

  static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: channelName,
      binaryMessenger: registrar.messenger()
    )
    let instance = PiliPipPlugin(channel: channel)
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  init(channel: FlutterMethodChannel) {
    self.channel = channel
    super.init()
  }

  func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isSupported":
      result(AVPictureInPictureController.isPictureInPictureSupported())
    case "isAutoEnterSupported":
      result(AVPictureInPictureController.isPictureInPictureSupported())
    case "setup":
      guard let arguments = call.arguments as? [String: Any] else {
        result(false)
        return
      }
      result(setup(arguments))
    case "start":
      result(start())
    case "stop":
      stop()
      result(nil)
    case "setAutoEnterEnabled":
      setAutoEnterEnabled(bool(call.arguments))
      result(nil)
    case "dispose":
      dispose()
      result(nil)
    case "updatePlaybackState":
      if let arguments = call.arguments as? [String: Any] {
        updatePlaybackState(arguments)
      }
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func setup(_ arguments: [String: Any]) -> Bool {
    guard AVPictureInPictureController.isPictureInPictureSupported() else {
      notifyState("failed", error: "PIP is not supported")
      return false
    }

    isLive = bool(arguments["isLive"])
    let autoEnter = bool(arguments["autoEnter"])
    let isPlaying = bool(arguments["isPlaying"])
    shouldPlayWhenPipStarts = isPlaying
    positionMilliseconds = int(arguments["position"])
    durationMilliseconds = int(arguments["duration"])

    let width = max(CGFloat(int(arguments["width"])), 1)
    let height = max(CGFloat(int(arguments["height"])), 1)
    let size = CGSize(width: width, height: height)

    setupRemoteCommands()
    updateRemoteCommandState(arguments)

    guard let videoUrl = arguments["videoUrl"] as? String, !videoUrl.isEmpty else {
      notifyState("failed", error: "PIP video URL is empty")
      return false
    }
    log("setup autoEnter=\(autoEnter) isPlaying=\(isPlaying) url=\(describeUrl(videoUrl)) audio=\(describeUrl(arguments["audioUrl"] as? String))")

    if currentVideoUrl != videoUrl || player == nil || playerLayer == nil || sourceView == nil {
      releaseContentSource()
      guard createPlayer(videoUrl: videoUrl, audioUrl: arguments["audioUrl"] as? String) else {
        return false
      }
    }

    sourceView?.frame = CGRect(origin: .zero, size: size)
    if sourceView?.superview == nil {
      activeRootView()?.insertSubview(sourceView!, at: 0)
    }

    if controller == nil, let playerLayer {
      controller = AVPictureInPictureController(playerLayer: playerLayer)
      controller?.delegate = self
      observePictureInPictureController(controller)
    }

    if #available(iOS 14.2, *) {
      controller?.canStartPictureInPictureAutomaticallyFromInline = autoEnter
    }

    seekPlayer(toMilliseconds: positionMilliseconds)

    if isActive && isPlaying {
      player?.play()
    } else {
      player?.pause()
    }

    updateNowPlayingInfo()
    return controller != nil
  }

  private func createPlayer(videoUrl: String, audioUrl: String?) -> Bool {
    statusObservation = nil
    possibleObservation = nil
    pendingStart = false

    let url = URL(string: videoUrl) ?? URL(fileURLWithPath: videoUrl)

    let asset = AVURLAsset(
      url: url,
      options: ["AVURLAssetHTTPHeaderFieldsKey": headers]
    )
    let item = AVPlayerItem(asset: asset)
    let player = AVPlayer(playerItem: item)
    log("createPlayer asset=\(describeUrl(videoUrl))")

    let sourceView = PlayerLayerView()
    sourceView.isHidden = false
    sourceView.alpha = 0.01
    sourceView.isUserInteractionEnabled = false
    sourceView.playerLayer.player = player
    sourceView.playerLayer.videoGravity = .resizeAspect

    self.player = player
    self.playerLayer = sourceView.playerLayer
    self.sourceView = sourceView
    currentVideoUrl = videoUrl

    observePlayerItem(item)

    if let audioUrl, !audioUrl.isEmpty {
      // AVPlayer cannot merge Bilibili DASH video/audio URLs here. The app still
      // keeps media_kit as the primary playback engine; this player is a PIP
      // content source for URLs that AVPlayer can handle directly.
      NSLog("[PiliPip] separated audio URL is ignored by AVPlayer PIP source")
    }

    return true
  }

  private func start() -> Bool {
    guard AVPictureInPictureController.isPictureInPictureSupported() else {
      notifyState("failed", error: "PIP is not supported")
      return false
    }
    guard let controller else {
      notifyState("failed", error: "PIP controller is not initialized")
      return false
    }
    log("start active=\(controller.isPictureInPictureActive) possible=\(controller.isPictureInPicturePossible) itemStatus=\(player?.currentItem?.status.rawValue ?? -1)")
    if !controller.isPictureInPictureActive {
      if canStartPictureInPictureNow(controller) {
        controller.startPictureInPicture()
      } else {
        pendingStart = true
        log("start pending because PIP is not possible yet")
        schedulePendingStartChecks()
        return true
      }
    }
    return true
  }

  private func stop() {
    if controller?.isPictureInPictureActive == true {
      log("stop")
      controller?.stopPictureInPicture()
    }
  }

  private var currentPlayerPositionMilliseconds: Int {
    guard let player else {
      return positionMilliseconds
    }
    let seconds = player.currentTime().seconds
    if seconds.isFinite {
      return Int(seconds * 1000)
    }
    return positionMilliseconds
  }

  private func setAutoEnterEnabled(_ enabled: Bool) {
    if #available(iOS 14.2, *) {
      controller?.canStartPictureInPictureAutomaticallyFromInline = enabled
    }
  }

  private func dispose() {
    stop()
    releaseContentSource()
    isActive = false
    clearNowPlayingInfo()
  }

  private func releaseContentSource() {
    if controller?.isPictureInPictureActive == true {
      controller?.stopPictureInPicture()
    }
    if currentVideoUrl != nil {
      log("releaseContentSource url=\(describeUrl(currentVideoUrl))")
    }
    pendingStart = false
    shouldPlayWhenPipStarts = false
    statusObservation = nil
    possibleObservation = nil
    player?.pause()
    player = nil
    playerLayer = nil
    controller = nil
    sourceView?.removeFromSuperview()
    sourceView = nil
    currentVideoUrl = nil
  }

  private func updatePlaybackState(_ arguments: [String: Any]) {
    isLive = bool(arguments["isLive"])
    positionMilliseconds = int(arguments["position"])
    durationMilliseconds = int(arguments["duration"])
    let isPlaying = bool(arguments["isPlaying"])
    if isActive {
      if isPlaying {
        player?.play()
      } else {
        player?.pause()
      }
    }
    updateRemoteCommandState(arguments)
    updateNowPlayingInfo()
  }

  private func seekPlayer(toMilliseconds milliseconds: Int) {
    guard !isLive, milliseconds > 0 else {
      return
    }
    let time = CMTime(value: CMTimeValue(milliseconds), timescale: 1000)
    player?.seek(to: time, toleranceBefore: .zero, toleranceAfter: .zero)
  }

  private func setupRemoteCommands() {
    if remoteCommandsConfigured {
      return
    }
    remoteCommandsConfigured = true

    let center = MPRemoteCommandCenter.shared()
    center.playCommand.addTarget { [weak self] _ in
      self?.channel.invokeMethod("play", arguments: nil)
      self?.player?.play()
      return .success
    }
    center.pauseCommand.addTarget { [weak self] _ in
      self?.channel.invokeMethod("pause", arguments: nil)
      self?.player?.pause()
      return .success
    }
    center.nextTrackCommand.addTarget { [weak self] _ in
      self?.channel.invokeMethod("next", arguments: nil)
      return .success
    }
    center.previousTrackCommand.addTarget { [weak self] _ in
      self?.channel.invokeMethod("previous", arguments: nil)
      return .success
    }
    center.changePlaybackPositionCommand.addTarget { [weak self] event in
      guard let self,
        let event = event as? MPChangePlaybackPositionCommandEvent
      else {
        return .commandFailed
      }
      let position = Int(event.positionTime * 1000)
      self.channel.invokeMethod("seek", arguments: ["position": position])
      self.player?.seek(to: CMTime(seconds: event.positionTime, preferredTimescale: 1000))
      return .success
    }
  }

  private func updateRemoteCommandState(_ arguments: [String: Any]) {
    let center = MPRemoteCommandCenter.shared()
    let canSeek = !isLive && durationMilliseconds > 0
    center.playCommand.isEnabled = true
    center.pauseCommand.isEnabled = true
    center.changePlaybackPositionCommand.isEnabled = canSeek
    center.previousTrackCommand.isEnabled = !isLive && bool(arguments["canSkipPrevious"])
    center.nextTrackCommand.isEnabled = !isLive && bool(arguments["canSkipNext"])
  }

  private func updateNowPlayingInfo() {
    var info = MPNowPlayingInfoCenter.default().nowPlayingInfo ?? [:]
    info[MPNowPlayingInfoPropertyElapsedPlaybackTime] = Double(positionMilliseconds) / 1000.0
    info[MPNowPlayingInfoPropertyPlaybackRate] = player?.rate ?? 0
    if !isLive && durationMilliseconds > 0 {
      info[MPMediaItemPropertyPlaybackDuration] = Double(durationMilliseconds) / 1000.0
    } else {
      info.removeValue(forKey: MPMediaItemPropertyPlaybackDuration)
    }
    MPNowPlayingInfoCenter.default().nowPlayingInfo = info
  }

  private func observePlayerItem(_ item: AVPlayerItem) {
    statusObservation = item.observe(\.status, options: [.initial, .new]) { [weak self] item, _ in
      DispatchQueue.main.async {
        self?.handlePlayerItemStatus(item.status, error: item.error)
      }
    }
  }

  private func observePictureInPictureController(_ controller: AVPictureInPictureController?) {
    possibleObservation = controller?.observe(\.isPictureInPicturePossible, options: [.initial, .new]) { [weak self] controller, _ in
      DispatchQueue.main.async {
        self?.log("possibleChanged possible=\(controller.isPictureInPicturePossible)")
        self?.startPendingPictureInPictureIfPossible(controller)
      }
    }
  }

  private func handlePlayerItemStatus(_ status: AVPlayerItem.Status, error: Error?) {
    switch status {
    case .readyToPlay:
      log("itemStatus readyToPlay possible=\(controller?.isPictureInPicturePossible ?? false)")
      seekPlayer(toMilliseconds: positionMilliseconds)
      if let controller {
        startPendingPictureInPictureIfPossible(controller)
      }
    case .failed:
      pendingStart = false
      log("itemStatus failed error=\(error?.localizedDescription ?? "nil")")
      notifyState("failed", error: error?.localizedDescription ?? "PIP video source failed to load")
    case .unknown:
      log("itemStatus unknown")
      break
    @unknown default:
      break
    }
  }

  private func startPendingPictureInPictureIfPossible(_ controller: AVPictureInPictureController) {
    guard pendingStart,
      canStartPictureInPictureNow(controller),
      !controller.isPictureInPictureActive
    else {
      return
    }
    pendingStart = false
    log("start pending PIP now")
    controller.startPictureInPicture()
  }

  private func schedulePendingStartChecks() {
    for delay in [0.1, 0.5, 1.0] {
      DispatchQueue.main.asyncAfter(deadline: .now() + delay) { [weak self] in
        guard let self, let controller = self.controller else {
          return
        }
        self.startPendingPictureInPictureIfPossible(controller)
      }
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
      guard let self, self.pendingStart else {
        return
      }
      self.pendingStart = false
      self.player?.pause()
      self.log("pending start timeout possible=\(self.controller?.isPictureInPicturePossible ?? false) itemStatus=\(self.player?.currentItem?.status.rawValue ?? -1)")
      self.notifyState("failed", error: "PIP is not possible")
    }
  }

  private func canStartPictureInPictureNow(_ controller: AVPictureInPictureController) -> Bool {
    controller.isPictureInPicturePossible && player?.currentItem?.status == .readyToPlay
  }

  private func clearNowPlayingInfo() {
    MPNowPlayingInfoCenter.default().nowPlayingInfo = nil
  }

  private func activeRootView() -> UIView? {
    for scene in UIApplication.shared.connectedScenes {
      guard let windowScene = scene as? UIWindowScene else {
        continue
      }
      for window in windowScene.windows where window.isKeyWindow {
        return window.rootViewController?.view
      }
    }
    return UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.rootViewController?.view
  }

  private func notifyState(_ state: String, error: String? = nil) {
    log("state=\(state) error=\(error ?? "nil")")
    var arguments: [String: Any] = [
      "state": state,
      "position": currentPlayerPositionMilliseconds,
      "isPlaying": player?.rate != 0,
    ]
    if let error {
      arguments["error"] = error
    }
    channel.invokeMethod("stateChanged", arguments: arguments)
  }

  private func log(_ message: String) {
    let text = "[PiliPip] \(message)"
    NSLog("%@", text)
    channel.invokeMethod("log", arguments: message)
  }

  private func describeUrl(_ urlString: String?) -> String {
    guard let urlString, !urlString.isEmpty else {
      return "nil"
    }
    guard let url = URL(string: urlString) else {
      return "invalid"
    }
    return "\(url.scheme ?? "")://\(url.host ?? "")\(url.path)"
  }

  private func bool(_ value: Any?) -> Bool {
    if let value = value as? Bool {
      return value
    }
    if let value = value as? NSNumber {
      return value.boolValue
    }
    return false
  }

  private func int(_ value: Any?) -> Int {
    if let value = value as? Int {
      return value
    }
    if let value = value as? NSNumber {
      return value.intValue
    }
    return 0
  }

  private var headers: [String: String] {
    [
      "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15",
      "Referer": "https://www.bilibili.com",
    ]
  }
}

extension PiliPipPlugin: AVPictureInPictureControllerDelegate {
  func pictureInPictureControllerDidStartPictureInPicture(
    _ pictureInPictureController: AVPictureInPictureController
  ) {
    isActive = true
    pendingStart = false
    if shouldPlayWhenPipStarts {
      player?.play()
    }
    notifyState("started")
  }

  func pictureInPictureControllerDidStopPictureInPicture(
    _ pictureInPictureController: AVPictureInPictureController
  ) {
    isActive = false
    pendingStart = false
    notifyState("stopped")
    player?.pause()
  }

  func pictureInPictureController(
    _ pictureInPictureController: AVPictureInPictureController,
    failedToStartPictureInPictureWithError error: Error
  ) {
    isActive = false
    pendingStart = false
    player?.pause()
    notifyState("failed", error: error.localizedDescription)
  }

  func pictureInPictureController(
    _ pictureInPictureController: AVPictureInPictureController,
    restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void
  ) {
    completionHandler(true)
  }
}

final class PlayerLayerView: UIView {
  override static var layerClass: AnyClass {
    AVPlayerLayer.self
  }

  var playerLayer: AVPlayerLayer {
    layer as! AVPlayerLayer
  }
}
