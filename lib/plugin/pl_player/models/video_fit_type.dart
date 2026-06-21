import 'package:PiliPlus/common/style.dart';
import 'package:flutter/material.dart' show BoxFit;
import 'package:get/get.dart';

enum VideoFitType {
  fill('enum.video_fit.fill', boxFit: BoxFit.fill),
  contain('enum.video_fit.contain', boxFit: BoxFit.contain),
  cover('enum.video_fit.cover', boxFit: BoxFit.cover),
  fitWidth('enum.video_fit.fit_width', boxFit: BoxFit.fitWidth),
  fitHeight('enum.video_fit.fit_height', boxFit: BoxFit.fitHeight),
  none('enum.video_fit.none', boxFit: BoxFit.none),
  scaleDown('enum.video_fit.scale_down', boxFit: BoxFit.scaleDown),
  ratio_4x3('4:3', aspectRatio: 4 / 3),
  ratio_16x9('16:9', aspectRatio: Style.aspectRatio16x9),
  ;

  final String _descKey;
  final BoxFit boxFit;
  final double? aspectRatio;
  const VideoFitType(
    this._descKey, {
    this.boxFit = BoxFit.contain,
    this.aspectRatio,
  });

  String get desc => _descKey.tr;
}
