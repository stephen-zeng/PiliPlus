import 'package:get/get.dart';

const double kScreenRatio = 1.2;

// 全屏模式
enum FullScreenMode {
  // 根据内容自适应
  auto('enum.fullscreen.auto'),
  // 不改变当前方向
  none('enum.fullscreen.none'),
  // 始终竖屏
  vertical('enum.fullscreen.vertical'),
  // 始终横屏
  horizontal('enum.fullscreen.horizontal'),
  // 屏幕长宽比 < kScreenRatio 或为竖屏视频时竖屏，否则横屏
  ratio('enum.fullscreen.ratio'),
  // 强制重力转屏（仅安卓）
  gravity('enum.fullscreen.gravity'),
  ;

  final String _key;
  const FullScreenMode(this._key);

  String get desc => this == ratio
      ? _key.trParams({'ratio': '$kScreenRatio'})
      : _key.tr;
}
