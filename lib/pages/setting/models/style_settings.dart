import 'dart:io';
import 'dart:math' as math;

import 'package:PiliPlus/common/widgets/color_palette.dart';
import 'package:PiliPlus/common/widgets/custom_toast.dart';
import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/scale_app.dart';
import 'package:PiliPlus/common/widgets/stateful_builder.dart';
import 'package:PiliPlus/models/common/bar_hide_type.dart';
import 'package:PiliPlus/models/common/dynamic/dynamic_badge_mode.dart';
import 'package:PiliPlus/models/common/dynamic/up_panel_position.dart';
import 'package:PiliPlus/models/common/home_tab_type.dart';
import 'package:PiliPlus/models/common/language_type.dart';
import 'package:PiliPlus/models/common/msg/msg_unread_type.dart';
import 'package:PiliPlus/models/common/nav_bar_config.dart';
import 'package:PiliPlus/models/common/theme/theme_color_type.dart';
import 'package:PiliPlus/models/common/theme/theme_type.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/pages/setting/slide_color_picker.dart';
import 'package:PiliPlus/pages/setting/widgets/dual_slider_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/multi_select_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/slider_dialog.dart';
import 'package:PiliPlus/plugin/pl_player/utils/fullscreen.dart';
import 'package:PiliPlus/utils/extension/file_ext.dart';
import 'package:PiliPlus/utils/extension/get_ext.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:PiliPlus/utils/extension/theme_ext.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/path_utils.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/theme_utils.dart';
import 'package:flutter/material.dart' hide StatefulBuilder;
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart' as path;

List<SettingsModel> get styleSettings => [
  if (PlatformUtils.isDesktop) ...[
    SwitchModel(
      title: 'setting.style.window_title_bar'.tr,
      leading: const Icon(Icons.window),
      setKey: SettingBoxKey.showWindowTitleBar,
      defaultVal: true,
      needReboot: true,
    ),
    SwitchModel(
      title: 'setting.style.tray_icon'.tr,
      leading: const Icon(Icons.donut_large_rounded),
      setKey: SettingBoxKey.showTrayIcon,
      defaultVal: true,
      needReboot: true,
    ),
  ],
  if (Platform.isLinux) _useSSDModel(),
  SwitchModel(
    title: 'setting.style.horizontal_screen'.tr,
    subtitle: 'setting.style.horizontal_screen_desc'.tr,
    leading: const Icon(Icons.phonelink_outlined),
    setKey: SettingBoxKey.horizontalScreen,
    defaultVal: Pref.horizontalScreen,
    onChanged: (value) {
      if (value) {
        fullMode();
      } else {
        portraitUpMode();
      }
    },
  ),
  SwitchModel(
    title: 'setting.style.use_sidebar'.tr,
    subtitle: 'setting.style.use_sidebar_desc'.tr,
    leading: const Icon(Icons.chrome_reader_mode_outlined),
    setKey: SettingBoxKey.useSideBar,
    defaultVal: false,
    needReboot: true,
  ),
  SplitModel(
    normalModel: NormalModel.split(
      title: 'setting.style.app_font_weight'.tr,
      subtitle: 'setting.style.tap_to_set'.tr,
      leading: const Icon(Icons.text_fields),
    ),
    switchModel: SwitchModel.split(
      defaultVal: false,
      setKey: SettingBoxKey.appFontWeight,
      onChanged: (_) => Get.updateMyAppTheme(),
      onTap: _showFontWeightDialog,
    ),
  ),
  NormalModel(
    title: 'setting.style.ui_scale'.tr,
    getSubtitle: () => 'setting.style.ui_scale_cur'.trParams({
      'value': Pref.uiScale.toStringAsFixed(2),
    }),
    leading: const Icon(Icons.zoom_in_outlined),
    onTap: _showUiScaleDialog,
  ),
  NormalModel(
    title: 'setting.style.page_transition'.tr,
    leading: const Icon(Icons.animation),
    getSubtitle: () =>
        'setting.style.page_transition_cur'.trParams({'value': Pref.pageTransition.name}),
    onTap: _showTransitionDialog,
  ),
  SwitchModel(
    title: 'setting.style.opt_tablet_nav'.tr,
    leading: const Icon(Icons.auto_fix_high),
    setKey: SettingBoxKey.optTabletNav,
    defaultVal: true,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.style.md3_nav_bar'.tr,
    subtitle: 'setting.style.md3_nav_bar_desc'.tr,
    leading: const Icon(Icons.design_services_outlined),
    setKey: SettingBoxKey.enableMYBar,
    defaultVal: true,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.style.floating_nav_bar'.tr,
    leading: const Icon(MdiIcons.soundbar),
    setKey: SettingBoxKey.floatingNavBar,
    defaultVal: false,
    needReboot: true,
  ),
  NormalModel(
    leading: const Icon(Icons.calendar_view_week_outlined),
    title: 'setting.style.list_width_limit'.tr,
    getSubtitle: () => 'setting.style.list_width_cur'.trParams({
      'home': Pref.recommendCardWidth.toInt().toString(),
      'other': Pref.smallCardWidth.toInt().toString(),
      'screen': MediaQuery.widthOf(Get.context!).toPrecision(2).toString(),
    }),
    onTap: _showCardWidthDialog,
  ),
  SwitchModel(
    title: 'setting.style.remove_safe_area'.tr,
    leading: const Icon(Icons.fit_screen_outlined),
    setKey: SettingBoxKey.removeSafeArea,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.style.dark_video_page'.tr,
    leading: const Icon(Icons.dark_mode_outlined),
    setKey: SettingBoxKey.darkVideoPage,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.style.dynamics_waterfall'.tr,
    subtitle: 'setting.style.dynamics_waterfall_desc'.tr,
    leading: const Icon(Icons.view_array_outlined),
    setKey: SettingBoxKey.dynamicsWaterfallFlow,
    defaultVal: Pref.horizontalScreen,
    needReboot: true,
  ),
  NormalModel(
    title: 'setting.style.up_panel_position'.tr,
    leading: const Icon(Icons.person_outlined),
    getSubtitle: () =>
        'setting.style.up_panel_cur'.trParams({'value': Pref.upPanelPosition.label}),
    onTap: _showUpPosDialog,
  ),
  SwitchModel(
    title: 'setting.style.dynamics_show_all_followed'.tr,
    leading: const Icon(Icons.people_alt_outlined),
    setKey: SettingBoxKey.dynamicsShowAllFollowedUp,
    defaultVal: false,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.style.expand_dyn_live'.tr,
    leading: const Icon(Icons.live_tv),
    setKey: SettingBoxKey.expandDynLivePanel,
    defaultVal: false,
    needReboot: true,
  ),
  NormalModel(
    title: 'setting.style.dynamic_badge'.tr,
    leading: const Icon(Icons.motion_photos_on_outlined),
    getSubtitle: () =>
        'setting.style.badge_cur'.trParams({'value': Pref.dynamicBadgeType.desc}),
    onTap: _showDynBadgeDialog,
  ),
  NormalModel(
    title: 'setting.style.msg_badge'.tr,
    leading: const Icon(MdiIcons.bellBadgeOutline),
    getSubtitle: () =>
        'setting.style.badge_cur'.trParams({'value': Pref.msgBadgeMode.desc}),
    onTap: _showMsgBadgeDialog,
  ),
  NormalModel(
    onTap: _showMsgUnReadDialog,
    title: 'setting.style.msg_unread_type'.tr,
    leading: const Icon(MdiIcons.bellCogOutline),
    getSubtitle: () =>
        'setting.style.msg_unread_cur'.trParams({
          'value': Pref.msgUnReadTypeV2.map((item) => item.title).join('、'),
        }),
  ),
  NormalModel(
    onTap: _showBarHideTypeDialog,
    title: 'setting.style.bar_hide_type'.tr,
    leading: const Icon(MdiIcons.arrowExpandVertical),
    getSubtitle: () =>
        'common.current'.trParams({'value': Pref.barHideType.label}),
  ),
  SwitchModel(
    title: 'setting.style.hide_top_bar'.tr,
    subtitle: 'setting.style.hide_top_bar_desc'.tr,
    leading: const Icon(Icons.vertical_align_top_outlined),
    setKey: SettingBoxKey.hideTopBar,
    defaultVal: PlatformUtils.isMobile,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.style.hide_bottom_bar'.tr,
    subtitle: 'setting.style.hide_bottom_bar_desc'.tr,
    leading: const Icon(Icons.vertical_align_bottom_outlined),
    setKey: SettingBoxKey.hideBottomBar,
    defaultVal: PlatformUtils.isMobile,
    needReboot: true,
  ),
  NormalModel(
    onTap: (context, setState) => _showQualityDialog(
      context: context,
      title: Text('setting.style.image_quality'.tr),
      initValue: Pref.picQuality,
      onChanged: (picQuality) async {
        GlobalData().imgQuality = picQuality;
        await GStorage.setting.put(SettingBoxKey.defaultPicQa, picQuality);
        setState();
      },
    ),
    title: 'setting.style.image_quality'.tr,
    subtitle: 'setting.style.image_quality_desc'.tr,
    leading: const Icon(Icons.image_outlined),
    getTrailing: (theme) => Text(
      '${Pref.picQuality}%',
      style: theme.textTheme.titleSmall,
    ),
  ),
  NormalModel(
    onTap: (context, setState) => _showQualityDialog(
      context: context,
      title: Text('setting.style.preview_quality'.tr),
      initValue: Pref.previewQ,
      onChanged: (picQuality) async {
        await GStorage.setting.put(SettingBoxKey.previewQuality, picQuality);
        setState();
      },
    ),
    title: 'setting.style.preview_quality'.tr,
    subtitle: 'setting.style.image_quality_desc'.tr,
    leading: const Icon(Icons.image_outlined),
    getTrailing: (theme) => Text(
      '${Pref.previewQ}%',
      style: theme.textTheme.titleSmall,
    ),
  ),
  NormalModel(
    onTap: _showReduceColorDialog,
    title: 'setting.style.reduce_lux_color'.tr,
    subtitle: 'setting.style.reduce_lux_color_desc'.tr,
    leading: const Icon(Icons.format_color_fill_outlined),
    getTrailing: (theme) => Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Pref.reduceLuxColor ?? Colors.white,
        shape: BoxShape.circle,
      ),
    ),
  ),
  NormalModel(
    leading: const Icon(Icons.opacity_outlined),
    title: 'setting.style.toast_opacity'.tr,
    subtitle: 'setting.style.toast_opacity_desc'.tr,
    getTrailing: (theme) => Text(
      CustomToast.toastOpacity.toStringAsFixed(1),
      style: theme.textTheme.titleSmall,
    ),
    onTap: _showToastDialog,
  ),
  NormalModel(
    onTap: _showLanguageDialog,
    leading: const Icon(Icons.language),
    title: 'setting.language.title'.tr,
    getSubtitle: () => Pref.language.label,
  ),
  NormalModel(
    onTap: _showThemeTypeDialog,
    leading: const Icon(Icons.flashlight_on_outlined),
    title: 'setting.style.theme_mode'.tr,
    getSubtitle: () =>
        'setting.style.theme_mode_cur'.trParams({'value': Pref.themeType.desc}),
  ),
  SwitchModel(
    leading: const Icon(Icons.invert_colors),
    title: 'setting.style.pure_black_theme'.tr,
    setKey: SettingBoxKey.isPureBlackTheme,
    defaultVal: false,
    onChanged: (value) {
      if (ThemeUtils.isDarkMode || Pref.darkVideoPage) {
        Get.updateMyAppTheme();
      }
    },
  ),
  NormalModel(
    onTap: (context, setState) => Get.toNamed('/colorSetting'),
    leading: const Icon(Icons.color_lens_outlined),
    title: 'setting.style.app_theme'.tr,
    getSubtitle: () => 'setting.style.app_theme_cur'.trParams({
      'value': Pref.dynamicColor
          ? 'setting.style.dynamic_color'.tr
          : 'setting.style.specified_color'.tr,
    }),
    getTrailing: (theme) => Pref.dynamicColor
        ? Icon(Icons.color_lens_rounded, color: theme.colorScheme.primary)
        : SizedBox.square(
            dimension: 20,
            child: ColorPalette(
              colorScheme: colorThemeTypes[Pref.customColor].color
                  .asColorSchemeSeed(Pref.schemeVariant, theme.brightness),
              selected: false,
              showBgColor: false,
            ),
          ),
  ),
  NormalModel(
    leading: const Icon(Icons.home_outlined),
    title: 'setting.style.default_home'.tr,
    getSubtitle: () =>
        'setting.style.default_home_cur'.trParams({'value': Pref.defaultHomePage.label}),
    onTap: _showDefHomeDialog,
  ),
  NormalModel(
    title: 'setting.style.spring_params'.tr,
    leading: const Icon(Icons.chrome_reader_mode_outlined),
    onTap: _showSpringDialog,
  ),
  NormalModel(
    onTap: (context, setState) async {
      final res = await Get.toNamed('/fontSizeSetting');
      if (res != null) {
        setState();
      }
    },
    title: 'setting.style.font_size'.tr,
    leading: const Icon(Icons.format_size_outlined),
    getSubtitle: () {
      final scale = Pref.defaultTextScale;
      return scale == 1.0 ? 'common.default'.tr : scale.toString();
    },
  ),
  NormalModel(
    onTap: (context, setState) => Get.toNamed(
      '/barSetting',
      arguments: {
        'key': SettingBoxKey.tabBarSort,
        'defaultBars': HomeTabType.values,
        'title': 'setting.style.home_tabs'.tr,
      },
    ),
    title: 'setting.style.home_tabs'.tr,
    subtitle: 'setting.style.home_tabs_desc'.tr,
    leading: const Icon(Icons.toc_outlined),
  ),
  NormalModel(
    onTap: (context, setState) => Get.toNamed(
      '/barSetting',
      arguments: {
        'key': SettingBoxKey.navBarSort,
        'defaultBars': NavigationBarType.values,
        'title': 'Navbar',
      },
    ),
    title: 'setting.style.navbar_edit'.tr,
    subtitle: 'setting.style.navbar_edit_desc'.tr,
    leading: const Icon(Icons.toc_outlined),
  ),
  SwitchModel(
    title: 'setting.style.direct_exit'.tr,
    subtitle: 'setting.style.direct_exit_desc'.tr,
    leading: const Icon(Icons.exit_to_app_outlined),
    setKey: SettingBoxKey.directExitOnBack,
    defaultVal: false,
    onChanged: (value) => Get.find<MainController>().directExitOnBack = value,
  ),
  if (Platform.isAndroid)
    NormalModel(
      onTap: (context, setState) => Get.toNamed('/displayModeSetting'),
      title: 'setting.style.display_mode'.tr,
      leading: const Icon(Icons.autofps_select_outlined),
    ),
];

void _showQualityDialog({
  required BuildContext context,
  required Widget title,
  required int initValue,
  required ValueChanged<int> onChanged,
}) {
  showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      value: initValue.toDouble(),
      title: title,
      min: 10,
      max: 100,
      divisions: 9,
      suffix: '%',
      precise: 0,
    ),
  ).then((result) {
    if (result != null) {
      SmartDialog.showToast('common.set_success'.tr);
      onChanged(result.toInt());
    }
  });
}

void _showUiScaleDialog(
  BuildContext context,
  VoidCallback setState,
) {
  const minUiScale = 0.5;
  const maxUiScale = 2.0;

  double uiScale = Pref.uiScale;
  final textController = TextEditingController(
    text: uiScale.toStringAsFixed(2),
  );

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.style.ui_scale'.tr),
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      content: StatefulBuilder(
        onDispose: textController.dispose,
        builder: (context, setDialogState) => Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              padding: .zero,
              value: uiScale,
              min: minUiScale,
              max: maxUiScale,
              secondaryTrackValue: 1.0,
              divisions: ((maxUiScale - minUiScale) * 20).toInt(),
              label: textController.text,
              onChanged: (value) => setDialogState(() {
                uiScale = value.toPrecision(2);
                textController.text = uiScale.toStringAsFixed(2);
              }),
            ),
            TextFormField(
              controller: textController,
              keyboardType: const .numberWithOptions(decimal: true),
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.allow(RegExp(r'[\d.]+')),
              ],
              decoration: InputDecoration(
                labelText: 'setting.style.ui_scale_label'.tr,
                hintText: '0.50 - 2.00',
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) {
                final parsed = double.tryParse(value);
                if (parsed != null &&
                    parsed >= minUiScale &&
                    parsed <= maxUiScale) {
                  setDialogState(() {
                    uiScale = parsed;
                  });
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            GStorage.setting.delete(SettingBoxKey.uiScale).whenComplete(() {
              setState();
              Get.appUpdate();
              ScaledWidgetsFlutterBinding.instance.scaleFactor = 1.0;
            });
          },
          child: Text('common.reset'.tr),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            GStorage.setting.put(SettingBoxKey.uiScale, uiScale).whenComplete(
              () {
                setState();
                Get.appUpdate();
                ScaledWidgetsFlutterBinding.instance.scaleFactor = uiScale;
              },
            );
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

void _showSpringDialog(BuildContext context, _) {
  final List<String> springDescription = Pref.springDescription
      .map((i) => i.toString())
      .toList(growable: false);
  bool physicalMode = true;

  void physical2Duration() {
    final mass = double.parse(springDescription[0]);
    final stiffness = double.parse(springDescription[1]);
    final damping = double.parse(springDescription[2]);

    final duration = math.sqrt(4 * math.pi * math.pi * mass / stiffness);
    final dampingRatio = damping / (2.0 * math.sqrt(mass * stiffness));
    final bounce = dampingRatio < 1.0
        ? 1.0 - dampingRatio
        : 1.0 / dampingRatio - 1;

    springDescription[0] = duration.toString();
    springDescription[1] = bounce.toString();
  }

  /// from [SpringDescription.withDurationAndBounce] but with higher precision
  void duration2Physical() {
    final duration = double.parse(springDescription[0]);
    final bounce = double.parse(springDescription[1]).clamp(-1.0, 1.0);

    final stiffness = 4 * math.pi * math.pi / math.pow(duration, 2);
    final dampingRatio = bounce > 0 ? 1.0 - bounce : 1.0 / (bounce + 1);
    final damping = 2 * math.sqrt(stiffness) * dampingRatio;

    springDescription[0] = '1';
    springDescription[1] = stiffness.toString();
    springDescription[2] = damping.toString();
  }

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text('setting.style.spring_params_title'.tr),
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: .compact,
              tapTargetSize: .shrinkWrap,
            ),
            onPressed: () {
              try {
                if (physicalMode) {
                  physical2Duration();
                } else {
                  duration2Physical();
                }
                physicalMode = !physicalMode;
                (context as Element).markNeedsBuild();
              } catch (e) {
                SmartDialog.showToast(e.toString());
              }
            },
            child: Text(
              physicalMode
                  ? 'setting.style.spring_duration'.tr
                  : 'setting.style.spring_physical'.tr,
            ),
          ),
        ],
      ),
      content: Column(
        key: ValueKey(physicalMode),
        mainAxisSize: .min,
        children: List.generate(
          physicalMode ? 3 : 2,
          (index) => TextFormField(
            autofocus: index == 0,
            initialValue: springDescription[index],
            keyboardType: .numberWithOptions(
              signed: !physicalMode && index == 1,
              decimal: true,
            ),
            onChanged: (value) => springDescription[index] = value,
            inputFormatters: [
              !physicalMode && index == 1
                  ? FilteringTextInputFormatter.allow(RegExp(r'[-\d\.]+'))
                  : FilteringTextInputFormatter.allow(RegExp(r'[\d\.]+')),
            ],
            decoration: InputDecoration(
              labelText: (physicalMode
                  ? const ['mass', 'stiffness', 'damping']
                  : const ['duration', 'bounce'])[index],
              suffixText: !physicalMode && index == 0 ? 's' : null,
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
            GStorage.setting.delete(SettingBoxKey.springDescription);
            SmartDialog.showToast('common.reset_success_reboot'.tr);
          },
          child: Text('common.reset'.tr),
        ),
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () {
            try {
              if (!physicalMode) {
                duration2Physical();
              }
              final res = springDescription.map(double.parse).toList();
              Get.back();
              GStorage.setting.put(SettingBoxKey.springDescription, res);
              SmartDialog.showToast('common.set_success_reboot'.tr);
            } catch (e) {
              SmartDialog.showToast(e.toString());
            }
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

Future<void> _showFontWeightDialog(BuildContext context) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.style.app_font_weight'.tr),
      value: Pref.appFontWeight.toDouble() + 1,
      min: 1,
      max: FontWeight.values.length.toDouble(),
      divisions: FontWeight.values.length - 1,
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.appFontWeight, res.toInt() - 1);
    Get.updateMyAppTheme();
  }
}

Future<void> _showTransitionDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<Transition>(
    context: context,
    builder: (context) => SelectDialog<Transition>(
      title: 'setting.style.page_transition'.tr,
      value: Pref.pageTransition,
      values: Transition.values.map((e) => (e, e.name)).toList(),
    ),
  );
  if (res != null) {
    Get.rootController.defaultTransition = res;
    await GStorage.setting.put(SettingBoxKey.pageTransition, res.index);
    setState();
  }
}

Future<void> _showCardWidthDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<(double, double)>(
    context: context,
    builder: (context) => DualSliderDialog(
      title: Text('setting.style.card_width_title'.tr),
      value1: Pref.recommendCardWidth,
      value2: Pref.smallCardWidth,
      description1: Text('setting.style.home_rcmd_feed'.tr),
      description2: Text('setting.style.other'.tr),
      min: 150.0,
      max: 500.0,
      divisions: 35,
      suffix: 'dp',
    ),
  );
  if (res != null) {
    await GStorage.setting.putAll({
      SettingBoxKey.recommendCardWidth: res.$1,
      SettingBoxKey.smallCardWidth: res.$2,
    });
    SmartDialog.showToast('common.reboot_effect'.tr);
    setState();
  }
}

Future<void> _showUpPosDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<UpPanelPosition>(
    context: context,
    builder: (context) => SelectDialog<UpPanelPosition>(
      title: 'setting.style.up_panel_position'.tr,
      value: Pref.upPanelPosition,
      values: UpPanelPosition.values.map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.upPanelPosition, res.index);
    SmartDialog.showToast('common.reboot_effect'.tr);
    setState();
  }
}

Future<void> _showDynBadgeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<DynamicBadgeMode>(
    context: context,
    builder: (context) => SelectDialog<DynamicBadgeMode>(
      title: 'setting.style.dynamic_badge'.tr,
      value: Pref.dynamicBadgeType,
      values: DynamicBadgeMode.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    final mainController = Get.find<MainController>()
      ..dynamicBadgeMode = DynamicBadgeMode.values[res.index];
    if (mainController.dynamicBadgeMode != DynamicBadgeMode.hidden) {
      mainController.getUnreadDynamic();
    }
    await GStorage.setting.put(
      SettingBoxKey.dynamicBadgeMode,
      res.index,
    );
    SmartDialog.showToast('common.set_success'.tr);
    setState();
  }
}

Future<void> _showMsgBadgeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<DynamicBadgeMode>(
    context: context,
    builder: (context) => SelectDialog<DynamicBadgeMode>(
      title: 'setting.style.msg_badge'.tr,
      value: Pref.msgBadgeMode,
      values: DynamicBadgeMode.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    final mainController = Get.find<MainController>()
      ..msgBadgeMode = DynamicBadgeMode.values[res.index];
    if (mainController.msgBadgeMode != DynamicBadgeMode.hidden) {
      mainController.queryUnreadMsg(true);
    } else {
      mainController.msgUnReadCount.value = '';
    }
    await GStorage.setting.put(SettingBoxKey.msgBadgeMode, res.index);
    SmartDialog.showToast('common.set_success'.tr);
    setState();
  }
}

Future<void> _showMsgUnReadDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<Set<MsgUnReadType>>(
    context: context,
    builder: (context) => MultiSelectDialog<MsgUnReadType>(
      title: 'setting.style.msg_unread_type'.tr,
      initValues: Pref.msgUnReadTypeV2,
      values: {for (final i in MsgUnReadType.values) i: i.title},
    ),
  );
  if (res != null) {
    final mainController = Get.find<MainController>()..msgUnReadTypes = res;
    if (mainController.msgBadgeMode != DynamicBadgeMode.hidden) {
      mainController.queryUnreadMsg();
    }
    await GStorage.setting.put(
      SettingBoxKey.msgUnReadTypeV2,
      res.map((item) => item.index).toList()..sort(),
    );
    SmartDialog.showToast('common.set_success'.tr);
    setState();
  }
}

void _showReduceColorDialog(
  BuildContext context,
  VoidCallback setState,
) {
  final reduceLuxColor = Pref.reduceLuxColor;
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      clipBehavior: Clip.hardEdge,
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      title: const Text('Color Picker'),
      content: SlideColorPicker(
        color: reduceLuxColor ?? Colors.white,
        onChanged: (Color? color) {
          if (color != null && color != reduceLuxColor) {
            if (color == Colors.white) {
              NetworkImgLayer.reduceLuxColor = null;
              GStorage.setting.delete(SettingBoxKey.reduceLuxColor);
              SmartDialog.showToast('common.set_success'.tr);
              setState();
            } else {
              void onConfirm() {
                NetworkImgLayer.reduceLuxColor = color;
                GStorage.setting.put(
                  SettingBoxKey.reduceLuxColor,
                  color.toARGB32(),
                );
                SmartDialog.showToast('common.set_success'.tr);
                setState();
              }

              if (color.computeLuminance() < 0.2) {
                showConfirmDialog(
                  context: context,
                  title: Text(
                    'setting.style.confirm_color'.trParams({
                      'color': (color.toARGB32() & 0xFFFFFF)
                          .toRadixString(16)
                          .toUpperCase()
                          .padLeft(6),
                    }),
                  ),
                  content: Text('setting.style.dark_color_warning'.tr),
                  onConfirm: onConfirm,
                );
              } else {
                onConfirm();
              }
            }
          }
        },
      ),
    ),
  );
}

Future<void> _showToastDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.style.toast_opacity'.tr),
      value: CustomToast.toastOpacity,
      min: 0.0,
      max: 1.0,
      divisions: 10,
    ),
  );
  if (res != null) {
    CustomToast.toastOpacity = res;
    await GStorage.setting.put(SettingBoxKey.defaultToastOp, res);
    SmartDialog.showToast('common.set_success'.tr);
    setState();
  }
}

Future<void> _showLanguageDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<LanguageType>(
    context: context,
    builder: (context) => SelectDialog<LanguageType>(
      title: 'setting.language.title'.tr,
      value: Pref.language,
      values: LanguageType.values.map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null && res != Pref.language) {
    await GStorage.setting.put(SettingBoxKey.language, res.index);
    Get.updateLocale(res.locale ?? Get.deviceLocale ?? const Locale('zh', 'CN'));
    setState();
  }
}

Future<void> _showThemeTypeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<ThemeType>(
    context: context,
    builder: (context) => SelectDialog<ThemeType>(
      title: 'setting.style.theme_mode'.tr,
      value: Pref.themeType,
      values: ThemeType.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    try {
      Get.find<MineController>().themeType.value = res;
    } catch (_) {}
    GStorage.setting.put(SettingBoxKey.themeMode, res.index);
    Get.changeThemeMode(ThemeUtils.themeMode = res.toThemeMode);
    setState();
  }
}

Future<void> _showDefHomeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<NavigationBarType>(
    context: context,
    builder: (context) => SelectDialog<NavigationBarType>(
      title: 'setting.style.default_home'.tr,
      value: Pref.defaultHomePage,
      values: NavigationBarType.values.map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.defaultHomePage, res.index);
    SmartDialog.showToast('common.set_success_reboot'.tr);
    setState();
  }
}

Future<void> _showBarHideTypeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<BarHideType>(
    context: context,
    builder: (context) => SelectDialog<BarHideType>(
      title: 'setting.style.bar_hide_type'.tr,
      value: Pref.barHideType,
      values: BarHideType.values.map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.barHideType, res.index);
    SmartDialog.showToast('common.reboot_effect'.tr);
    setState();
  }
}

NormalModel _useSSDModel() {
  final file = File(path.join(appSupportDirPath, 'use_ssd'));
  void onChanged(BuildContext context, VoidCallback setState) {
    (file.existsSync() ? file.tryDel() : file.create()).whenComplete(() {
      if (context.mounted) {
        setState();
      }
    });
  }

  return NormalModel(
    title: 'setting.style.use_ssd'.tr,
    leading: const Icon(Icons.web_asset),
    onTap: onChanged,
    getTrailing: (theme) => Builder(
      builder: (context) => Transform.scale(
        scale: 0.8,
        alignment: .centerRight,
        child: Switch(
          value: file.existsSync(),
          onChanged: (_) =>
              onChanged(context, (context as Element).markNeedsBuild),
        ),
      ),
    ),
  );
}
