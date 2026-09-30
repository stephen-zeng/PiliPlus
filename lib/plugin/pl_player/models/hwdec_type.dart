import 'package:get/get.dart';

// mpv --hwdec=help
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kDebugMode;

enum HwDecType {
  no('no', 'enum.hwdec.no'),
  auto('auto', 'enum.hwdec.auto'),
  autoSafe('auto-safe', 'enum.hwdec.auto_safe'),
  autoCopy('auto-copy', 'enum.hwdec.auto_copy'),
  d3d12va('d3d12va', 'enum.hwdec.d3d12va'),
  d3d12vaCopy('d3d12va-copy', 'enum.hwdec.d3d12va_copy'),
  d3d11va('d3d11va', 'enum.hwdec.d3d11va'),
  d3d11vaCopy('d3d11va-copy', 'enum.hwdec.d3d11va_copy'),
  dxva2('dxva2', 'enum.hwdec.dxva2'),
  dxva2Copy('dxva2-copy', 'enum.hwdec.dxva2_copy'),
  videotoolbox('videotoolbox', 'VideoToolbox (macOS / iOS)'),
  videotoolboxCopy('videotoolbox-copy', 'enum.hwdec.videotoolbox_copy'),
  vaapi('vaapi', 'VAAPI (Linux)'),
  vaapiCopy('vaapi-copy', 'enum.hwdec.vaapi_copy'),
  nvdec('nvdec', 'enum.hwdec.nvdec'),
  nvdecCopy('nvdec-copy', 'enum.hwdec.nvdec_copy'),
  drm('drm', 'DRM (Linux)'),
  drmCopy('drm-copy', 'enum.hwdec.drm_copy'),
  vulkan('vulkan', 'enum.hwdec.vulkan'),
  vulkanCopy('vulkan-copy', 'enum.hwdec.vulkan_copy'),
  vdpau('vdpau', 'VDPAU (Linux)'),
  vdpauCopy('vdpau-copy', 'enum.hwdec.vdpau_copy'),
  mediacodec('mediacodec', 'MediaCodec (Android)'),
  mediacodecCopy('mediacodec-copy', 'enum.hwdec.mediacodec_copy'),
  cuda('cuda', 'enum.hwdec.cuda'),
  cudaCopy('cuda-copy', 'enum.hwdec.cuda_copy'),
  crystalhd('crystalhd', 'enum.hwdec.crystalhd'),
  rkmpp('rkmpp', 'enum.hwdec.rkmpp'),
  amf('amf', 'enum.hwdec.amf'),
  amfCopy('amf-copy', 'enum.hwdec.amf_copy'),
  qsv('qsv', 'enum.hwdec.qsv'),
  qsvCopy('qsv-copy', 'enum.hwdec.qsv_copy'),
  ;

  final String hwdec;
  final String _descKey;
  String get desc => _descKey.tr;
  const HwDecType(this.hwdec, this._descKey);

  static final String kHwdec = Platform.isAndroid
      ? kDebugMode
            ? autoSafe.hwdec
            : [mediacodec.hwdec, autoSafe.hwdec].join(',')
      : auto.hwdec;
}
