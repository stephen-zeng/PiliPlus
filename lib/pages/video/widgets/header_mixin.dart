import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/widgets/menu_row.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/plugin/pl_player/utils/danmaku_options.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin HeaderMixin<T extends StatefulWidget> on State<T> {
  PlPlayerController get plPlayerController;

  bool get isFullScreen => plPlayerController.isFullScreen.value;

  ThemeData? get theme {
    if (plPlayerController.darkVideoPage) {
      return ThemeUtils.darkTheme;
    }
    return null;
  }

  Future<void>? showBottomSheet(
    StatefulWidgetBuilder builder, {
    ValueGetter<EdgeInsets>? padding,
  }) {
    return PageUtils.showVideoBottomSheet(
      context,
      maxWidth: 512,
      padding: padding,
      child: StatefulBuilder(
        builder: (context, setState) {
          final theme = this.theme;
          if (theme != null) {
            return Theme(
              data: theme,
              child: builder(this.context, setState),
            );
          }
          return builder(context, setState);
        },
      ),
    );
  }

  Widget resetBtn(ThemeData theme, Object def, VoidCallback onPressed) {
    return iconButton(
      tooltip: 'video.default'.trParams({'var0': (def).toString()}),
      icon: const Icon(Icons.refresh),
      onPressed: onPressed,
      iconColor: theme.colorScheme.outline,
      size: 24,
      iconSize: 24,
    );
  }

  /// 弹幕功能
  void showSetDanmaku({bool isLive = false}) {
    // 屏蔽类型
    final blockTypesList = [
      (value: 2, label: 'video.scroll'.tr),
      (value: 5, label: 'video.top'.tr),
      (value: 4, label: 'video.bottom'.tr),
      (value: 6, label: 'video.color'.tr),
      (value: 7, label: 'video.advanced'.tr),
    ];

    final danmakuController = plPlayerController.danmakuController;

    final isFullScreen = this.isFullScreen;

    showBottomSheet(
      (context, setState) {
        final theme = Theme.of(context);

        void setOptions() => danmakuController?.updateOption(
          DanmakuOptions.get(
            notFullscreen: !isFullScreen,
            speed: plPlayerController.playbackSpeed,
          ),
        );

        final sliderTheme = SliderThemeData(
          trackHeight: 10,
          trackShape: const MSliderTrackShape(),
          thumbColor: theme.colorScheme.primary,
          activeTrackColor: theme.colorScheme.primary,
          inactiveTrackColor: theme.colorScheme.onInverseSurface,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
        );

        void updateLineHeight(double val) {
          DanmakuOptions.danmakuLineHeight = val.toPrecision(1);
          setState(() {});
          setOptions();
        }

        void updateDuration(double val) {
          DanmakuOptions.danmakuDuration = val.toPrecision(1);
          setState(() {});
          setOptions();
        }

        void updateStaticDuration(double val) {
          DanmakuOptions.danmakuStaticDuration = val.toPrecision(1);
          setState(() {});
          setOptions();
        }

        void updateFontSizeFS(double val) {
          DanmakuOptions.danmakuFontScaleFS = val;
          setState(() {});
          if (isFullScreen) {
            setOptions();
          }
        }

        void updateFontSize(double val) {
          DanmakuOptions.danmakuFontScale = val;
          setState(() {});
          if (!isFullScreen) {
            setOptions();
          }
        }

        void updateStrokeWidth(double val) {
          DanmakuOptions.danmakuStrokeWidth = val;
          setState(() {});
          setOptions();
        }

        void updateFontWeight(double val) {
          DanmakuOptions.danmakuFontWeight = val.toInt();
          setState(() {});
          setOptions();
        }

        void updateOpacity(double val) {
          plPlayerController.danmakuOpacity.value = val;
          setState(() {});
        }

        void updateShowArea(double val) {
          DanmakuOptions.danmakuShowArea = val.toPrecision(1);
          setState(() {});
          setOptions();
        }

        void updateDanmakuWeight(double val) {
          DanmakuOptions.danmakuWeight = val.toInt();
          setState(() {});
        }

        void onUpdateBlockType(int blockType, bool blocked) {
          if (blocked) {
            DanmakuOptions.blockTypes.remove(blockType);
          } else {
            DanmakuOptions.blockTypes.add(blockType);
          }
          DanmakuOptions.blockColorful = DanmakuOptions.blockTypes.contains(6);
          setState(() {});
          setOptions();
        }

        return Padding(
          padding: const EdgeInsets.all(12),
          child: Material(
            clipBehavior: Clip.hardEdge,
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 45,
                    child: Center(
                      child: Text('player.danmaku_setting'.tr, style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (!isLive) ...[
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text('video.smart_cloud_block_level'.trParams({'var0': (DanmakuOptions.danmakuWeight).toString()})),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () => Get
                            ..back()
                            ..toNamed(
                              '/danmakuBlock',
                              arguments: plPlayerController,
                            ),
                          child: Text(
                            'video.shield_management'.trParams({'var0': (plPlayerController.filters.count).toString()}),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        bottom: 6,
                        left: 10,
                        right: 10,
                      ),
                      child: SliderTheme(
                        data: sliderTheme,
                        child: Slider(
                          min: 0,
                          max: 11,
                          value: DanmakuOptions.danmakuWeight.toDouble(),
                          divisions: 11,
                          label: DanmakuOptions.danmakuWeight.toString(),
                          onChanged: updateDanmakuWeight,
                        ),
                      ),
                    ),
                  ],
                  Text('setting.block_by_type'.tr),
                  SingleChildScrollView(
                    scrollDirection: .horizontal,
                    padding: const .symmetric(vertical: 10),
                    child: Row(
                      spacing: 10,
                      children: blockTypesList.map(
                        (e) {
                          final blocked = DanmakuOptions.blockTypes.contains(
                            e.value,
                          );
                          return ActionRowLineItem(
                            onTap: () => onUpdateBlockType(e.value, blocked),
                            text: e.label,
                            selectStatus: blocked,
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Text('net.conn.other'.tr),
                  SingleChildScrollView(
                    scrollDirection: .horizontal,
                    padding: const .symmetric(vertical: 10),
                    child: Row(
                      spacing: 10,
                      children: [
                        ActionRowLineItem(
                          selectStatus: DanmakuOptions.danmakuMassiveMode,
                          onTap: () {
                            DanmakuOptions.danmakuMassiveMode =
                                !DanmakuOptions.danmakuMassiveMode;
                            setState(() {});
                            setOptions();
                          },
                          text: 'video.massive_danmaku'.tr,
                        ),
                        ActionRowLineItem(
                          selectStatus: DanmakuOptions.danmakuStatic2Scroll,
                          onTap: () {
                            DanmakuOptions.danmakuStatic2Scroll =
                                !DanmakuOptions.danmakuStatic2Scroll;
                            setState(() {});
                            setOptions();
                          },
                          text: 'video.static_to_rolling'.tr,
                        ),
                        ActionRowLineItem(
                          selectStatus: DanmakuOptions.danmakuFixedV,
                          onTap: () {
                            DanmakuOptions.danmakuFixedV =
                                !DanmakuOptions.danmakuFixedV;
                            setState(() {});
                            setOptions();
                          },
                          text: 'video.fixed_speed_for_rolling_danmaku'.tr,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.display_area'.trParams({'var0': (DanmakuOptions.danmakuShowArea * 100).toString()})),
                      resetBtn(theme, '50.0%', () => updateShowArea(0.5)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0.1,
                        max: 1,
                        value: DanmakuOptions.danmakuShowArea,
                        divisions: 9,
                        label: '${DanmakuOptions.danmakuShowArea * 100}%',
                        onChanged: updateShowArea,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.opacity'.trParams({'var0': (plPlayerController.danmakuOpacity * 100).toString()})),
                      resetBtn(theme, '100.0%', () => updateOpacity(1.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0,
                        max: 1,
                        value: plPlayerController.danmakuOpacity.value,
                        divisions: 10,
                        label: '${plPlayerController.danmakuOpacity * 100}%',
                        onChanged: updateOpacity,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'video.font_weight_may_not_adjust_precisely'.trParams({'var0': (DanmakuOptions.danmakuFontWeight + 1).toString()}),
                      ),
                      resetBtn(theme, 6, () => updateFontWeight(5)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0,
                        max: 8,
                        value: DanmakuOptions.danmakuFontWeight.toDouble(),
                        divisions: 8,
                        label: '${DanmakuOptions.danmakuFontWeight + 1}',
                        onChanged: updateFontWeight,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.stroke_weight'.trParams({'var0': (DanmakuOptions.danmakuStrokeWidth).toString()})),
                      resetBtn(theme, 1.5, () => updateStrokeWidth(1.5)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0,
                        max: 5,
                        value: DanmakuOptions.danmakuStrokeWidth,
                        divisions: 10,
                        label: DanmakuOptions.danmakuStrokeWidth
                            .toStringAsFixed(0),
                        onChanged: updateStrokeWidth,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'video.font_size'.trParams({'var0': ((DanmakuOptions.danmakuFontScale * 100).toStringAsFixed(1)).toString()}),
                      ),
                      resetBtn(theme, '100.0%', () => updateFontSize(1.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0.5,
                        max: 2.5,
                        value: DanmakuOptions.danmakuFontScale,
                        divisions: 20,
                        label:
                            '${(DanmakuOptions.danmakuFontScale * 100).toStringAsFixed(1)}%',
                        onChanged: updateFontSize,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'video.fullscreen_font_size'.trParams({'var0': ((DanmakuOptions.danmakuFontScaleFS * 100).toStringAsFixed(1)).toString()}),
                      ),
                      resetBtn(theme, '120.0%', () => updateFontSizeFS(1.2)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 0.5,
                        max: 2.5,
                        value: DanmakuOptions.danmakuFontScaleFS,
                        divisions: 20,
                        label:
                            '${(DanmakuOptions.danmakuFontScaleFS * 100).toStringAsFixed(1)}%',
                        onChanged: updateFontSizeFS,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.scroll_barrage_duration_seconds'.trParams({'var0': (DanmakuOptions.danmakuDuration).toString()})),
                      resetBtn(theme, 7.0, () => updateDuration(7.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 1,
                        max: 50,
                        value: DanmakuOptions.danmakuDuration,
                        divisions: 49,
                        label: DanmakuOptions.danmakuDuration.toString(),
                        onChanged: updateDuration,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.static_danmaku_duration_seconds'.trParams({'var0': (DanmakuOptions.danmakuStaticDuration).toString()})),
                      resetBtn(theme, 4.0, () => updateStaticDuration(4.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 1,
                        max: 50,
                        value: DanmakuOptions.danmakuStaticDuration,
                        divisions: 49,
                        label: DanmakuOptions.danmakuStaticDuration.toString(),
                        onChanged: updateStaticDuration,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('video.danmaku_line_height'.trParams({'var0': (DanmakuOptions.danmakuLineHeight).toString()})),
                      resetBtn(theme, 1.6, () => updateLineHeight(1.6)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      bottom: 6,
                      left: 10,
                      right: 10,
                    ),
                    child: SliderTheme(
                      data: sliderTheme,
                      child: Slider(
                        min: 1.0,
                        max: 3.0,
                        value: DanmakuOptions.danmakuLineHeight,
                        onChanged: updateLineHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    )?.whenComplete(
      () => DanmakuOptions.save(plPlayerController.danmakuOpacity.value),
    );
  }
}

class MSliderTrackShape extends RoundedRectSliderTrackShape {
  const MSliderTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    SliderThemeData? sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    const double trackHeight = 3;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2 + 4;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
