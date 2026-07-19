import 'dart:io';
import 'dart:math' show max;

import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/common/widgets/dialog/simple_dialog_option.dart';
import 'package:PiliPlus/common/widgets/flutter/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/gesture/horizontal_drag_gesture_recognizer.dart'
    show deviceTouchSlop, touchSlopH;
import 'package:PiliPlus/common/widgets/image_grid/image_grid_view.dart'
    show ImageGridView, ImageModel;
import 'package:PiliPlus/common/widgets/pendant_avatar.dart';
import 'package:PiliPlus/grpc/reply.dart';
import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/audio_normalization.dart';
import 'package:PiliPlus/models/common/dynamic/dynamics_type.dart';
import 'package:PiliPlus/models/common/member/tab_type.dart';
import 'package:PiliPlus/models/common/reply/reply_sort_type.dart';
import 'package:PiliPlus/models/common/sponsor_block/skip_type.dart';
import 'package:PiliPlus/models/common/super_resolution_type.dart';
import 'package:PiliPlus/models/dynamics/result.dart'
    show DynamicsDataModel, ItemModulesModel;
import 'package:PiliPlus/pages/common/slide/common_slide_page.dart';
import 'package:PiliPlus/pages/home/controller.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/slider_dialog.dart';
import 'package:PiliPlus/pages/video/reply/widgets/reply_item_grpc.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/services/download/download_service.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/cache_manager.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/filtering_text.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/image_utils.dart';
import 'package:PiliPlus/utils/path_utils.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/update.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart' hide RefreshIndicator;
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

List<SettingsModel> get extraSettings => [
  if (PlatformUtils.isDesktop) ...[
    SwitchModel(
      title: 'setting.extra.minimize_on_exit'.tr,
      leading: const Icon(Icons.exit_to_app),
      setKey: SettingBoxKey.minimizeOnExit,
      defaultVal: true,
      onChanged: (value) {
        try {
          Get.find<MainController>().minimizeOnExit = value;
        } catch (_) {}
      },
    ),
    NormalModel(
      title: 'setting.extra.download_path'.tr,
      getSubtitle: () => downloadPath,
      leading: const Icon(Icons.storage),
      onTap: _showDownPathDialog,
    ),
  ],
  SplitModel(
    normalModel: NormalModel.split(
      title: 'setting.extra.sponsor_block'.tr,
      subtitle: 'setting.extra.click_config'.tr,
      leading: const Icon(CustomIcons.shield_play_arrow),
    ),
    switchModel: SwitchModel.split(
      defaultVal: false,
      setKey: SettingBoxKey.enableSponsorBlock,
      onTap: (context) => Get.toNamed('/sponsorBlock'),
    ),
  ),
  PopupModel<SkipType>(
    title: 'setting.extra.pgc_skip_type'.tr,
    leading: const Icon(MdiIcons.debugStepOver),
    value: () => Pref.pgcSkipType,
    items: SkipType.values,
    onSelected: (value, setState) => GStorage.setting
        .put(SettingBoxKey.pgcSkipType, value.index)
        .whenComplete(setState),
  ),
  SplitModel(
    normalModel: NormalModel.split(
      title: 'setting.extra.check_dynamic'.tr,
      subtitle: 'setting.extra.check_dynamic_desc'.tr,
      leading: const Icon(Icons.notifications_none),
    ),
    switchModel: SwitchModel.split(
      defaultVal: true,
      setKey: SettingBoxKey.checkDynamic,
      onChanged: (value) => Get.find<MainController>().checkDynamic = value,
      onTap: _showDynDialog,
    ),
  ),
  SwitchModel(
    title: 'setting.extra.show_view_points'.tr,
    leading: const Icon(CustomIcons.view_headline_rotate_90),
    setKey: SettingBoxKey.showViewPoints,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_related_video'.tr,
    leading: const Icon(MdiIcons.motionPlayOutline),
    setKey: SettingBoxKey.showRelatedVideo,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_video_reply'.tr,
    leading: const Icon(MdiIcons.commentTextOutline),
    setKey: SettingBoxKey.showVideoReply,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_bangumi_reply'.tr,
    leading: const Icon(MdiIcons.commentTextOutline),
    setKey: SettingBoxKey.showBangumiReply,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.expand_intro'.tr,
    leading: const Icon(Icons.expand_more),
    setKey: SettingBoxKey.alwaysExpandIntroPanel,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.expand_intro_h'.tr,
    leading: const Icon(Icons.expand_more),
    setKey: SettingBoxKey.expandIntroPanelH,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.horizontal_season_panel'.tr,
    leading: const Icon(Icons.format_list_numbered_rtl_sharp),
    setKey: SettingBoxKey.horizontalSeasonPanel,
    defaultVal: Pref.horizontalScreen,
  ),
  SwitchModel(
    title: 'setting.extra.horizontal_member_page'.tr,
    leading: const Icon(Icons.account_circle_outlined),
    setKey: SettingBoxKey.horizontalMemberPage,
    defaultVal: Pref.horizontalScreen,
  ),
  SwitchModel(
    title: 'setting.extra.horizontal_preview'.tr,
    leading: const Icon(Icons.photo_outlined),
    setKey: SettingBoxKey.horizontalPreview,
    defaultVal: false,
    onChanged: (value) => ImageGridView.horizontalPreview = value,
  ),
  NormalModel(
    title: 'setting.extra.reply_collapse_lines'.tr,
    subtitle: 'setting.extra.reply_collapse_lines_desc'.tr,
    leading: const Icon(Icons.compress),
    getTrailing: (theme) => Text(
      'setting.extra.line_count'.trParams({
        'count': '${ReplyItemGrpc.replyLengthLimit}',
      }),
      style: theme.textTheme.titleSmall,
    ),
    onTap: _showReplyLengthDialog,
  ),
  NormalModel(
    title: 'setting.extra.dm_line_height'.tr,
    subtitle: 'setting.extra.default_1_6'.tr,
    leading: const Icon(CustomIcons.dm_settings),
    getTrailing: (theme) => Text(
      Pref.danmakuLineHeight.toString(),
      style: theme.textTheme.titleSmall,
    ),
    onTap: _showDmHeightDialog,
  ),
  SwitchModel(
    title: 'setting.extra.show_argue_msg'.tr,
    leading: const Icon(Icons.warning_amber_rounded),
    setKey: SettingBoxKey.showArgueMsg,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_dyn_dispute'.tr,
    leading: const Icon(Icons.warning_amber_rounded),
    setKey: SettingBoxKey.showDynDispute,
    defaultVal: false,
    onChanged: (val) => ItemModulesModel.showDynDispute = val,
  ),
  SwitchModel(
    title: 'setting.extra.reverse_from_first'.tr,
    subtitle: 'setting.extra.reverse_from_first_desc'.tr,
    leading: const Icon(MdiIcons.sort),
    setKey: SettingBoxKey.reverseFromFirst,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.disable_ssl'.tr,
    subtitle: 'setting.extra.disable_ssl_desc'.tr,
    leading: const Icon(Icons.security),
    needReboot: true,
    setKey: SettingBoxKey.badCertificateCallback,
  ),
  SwitchModel(
    title: 'setting.extra.continue_playing_part'.tr,
    leading: const Icon(Icons.local_parking),
    setKey: SettingBoxKey.continuePlayingPart,
    defaultVal: true,
  ),
  getBanWordModel(
    title: 'setting.extra.reply_kw_filter'.tr,
    key: SettingBoxKey.banWordForReply,
    onChanged: (value) {
      ReplyGrpc.replyRegExp = value;
      ReplyGrpc.enableFilter = value.pattern.isNotEmpty;
    },
  ),
  getBanWordModel(
    title: 'setting.extra.dyn_kw_filter'.tr,
    key: SettingBoxKey.banWordForDyn,
    onChanged: (value) {
      DynamicsDataModel.banWordForDyn = value;
      DynamicsDataModel.enableFilter = value.pattern.isNotEmpty;
    },
  ),
  SwitchModel(
    title: 'setting.extra.open_in_browser'.tr,
    leading: const Icon(Icons.open_in_browser),
    setKey: SettingBoxKey.openInBrowser,
    defaultVal: false,
  ),
  NormalModel(
    title: 'setting.extra.touch_slop_h'.tr,
    getSubtitle: () => 'setting.extra.touch_slop_h_cur'.trParams({
      'value': '${Pref.touchSlopH}',
      'default': '$deviceTouchSlop',
    }),
    onTap: _showTouchSlopDialog,
    leading: const Icon(Icons.pan_tool_alt_outlined),
  ),
  NormalModel(
    title: 'setting.extra.refresh_drag'.tr,
    leading: const Icon(Icons.refresh),
    getSubtitle: () => 'setting.extra.refresh_drag_cur'.trParams({
      'value': '${Pref.refreshDragPercentage}',
    }),
    onTap: _showRefreshDragDialog,
  ),
  NormalModel(
    title: 'setting.extra.refresh_displacement'.tr,
    leading: const Icon(Icons.height),
    getSubtitle: () => 'setting.extra.refresh_displacement_cur'.trParams({
      'value': '${Pref.refreshDisplacement}',
    }),
    onTap: _showRefreshDialog,
  ),
  SwitchModel(
    title: 'setting.extra.show_vip_dm'.tr,
    leading: const Icon(MdiIcons.gradientHorizontal),
    setKey: SettingBoxKey.showVipDanmaku,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.merge_danmaku'.tr,
    subtitle: 'setting.extra.merge_danmaku_desc'.tr,
    leading: const Icon(Icons.merge),
    setKey: SettingBoxKey.mergeDanmaku,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.show_hot_rcmd'.tr,
    subtitle: 'setting.extra.show_hot_rcmd_desc'.tr,
    leading: const Icon(Icons.local_fire_department_outlined),
    setKey: SettingBoxKey.showHotRcmd,
    defaultVal: false,
    needReboot: true,
  ),
  if (kDebugMode || Platform.isAndroid)
    NormalModel(
      title: 'setting.extra.audio_norm'.tr,
      leading: const Icon(Icons.multitrack_audio),
      getSubtitle: () {
        final audioNormalization = AudioNormalization.getTitleFromConfig(
          Pref.audioNormalization,
        );
        String fallback = Pref.fallbackNormalization;
        if (fallback == '0') {
          fallback = '';
        } else {
          fallback = 'setting.extra.audio_norm_fallback_cur'.trParams({
            'value': AudioNormalization.getTitleFromConfig(fallback),
          });
        }
        return 'setting.extra.audio_norm_cur'.trParams({
          'value': audioNormalization,
          'fallback': fallback,
        });
      },
      onTap: audioNormalization,
    ),
  NormalModel(
    title: 'setting.extra.super_resolution'.tr,
    leading: const Icon(Icons.stay_current_landscape_outlined),
    getSubtitle: () => 'setting.extra.super_resolution_cur'.trParams({
      'value': Pref.superResolutionType.label,
    }),
    onTap: _showSuperResolutionDialog,
  ),
  SwitchModel(
    title: 'setting.extra.preinit_player'.tr,
    subtitle: 'setting.extra.preinit_player_desc'.tr,
    leading: const Icon(Icons.play_circle_outlined),
    setKey: SettingBoxKey.preInitPlayer,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.main_tab_animation'.tr,
    leading: const Icon(Icons.home_outlined),
    setKey: SettingBoxKey.mainTabBarView,
    defaultVal: false,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.extra.search_suggestion'.tr,
    leading: const Icon(Icons.search),
    setKey: SettingBoxKey.searchSuggestion,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.record_search_history'.tr,
    leading: const Icon(Icons.history),
    setKey: SettingBoxKey.recordSearchHistory,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_decorate'.tr,
    leading: const Icon(MdiIcons.stickerCircleOutline),
    setKey: SettingBoxKey.showDecorate,
    defaultVal: true,
    onChanged: (value) => PendantAvatar.showDecorate = value,
  ),
  SwitchModel(
    title: 'setting.extra.show_medal'.tr,
    leading: const Icon(MdiIcons.medalOutline),
    setKey: SettingBoxKey.showMedal,
    defaultVal: true,
    onChanged: (value) => GlobalData().showMedal = value,
  ),
  SwitchModel(
    title: 'setting.extra.preview_live_photo'.tr,
    subtitle: 'setting.extra.preview_live_photo_desc'.tr,
    leading: const Icon(Icons.image_outlined),
    setKey: SettingBoxKey.enableLivePhoto,
    defaultVal: true,
    onChanged: (value) => ImageModel.enableLivePhoto = value,
  ),
  SwitchModel(
    title: 'setting.extra.show_seek_preview'.tr,
    leading: const Icon(Icons.preview_outlined),
    setKey: SettingBoxKey.showSeekPreview,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_dm_chart'.tr,
    subtitle: 'setting.extra.show_dm_chart_desc'.tr,
    leading: const Icon(Icons.show_chart),
    setKey: SettingBoxKey.showDmChart,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.save_reply'.tr,
    leading: const Icon(Icons.message_outlined),
    setKey: SettingBoxKey.saveReply,
    defaultVal: true,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.extra.comm_antifraud'.tr,
    subtitle: 'setting.extra.comm_antifraud_desc'.tr,
    leading: const Icon(CustomIcons.shield_reply),
    setKey: SettingBoxKey.enableCommAntifraud,
    defaultVal: false,
  ),
  if (Platform.isAndroid)
    SwitchModel(
      title: 'setting.extra.bili_comm_antifraud'.tr,
      leading: const Icon(
        FontAwesomeIcons.b,
        size: 22,
      ),
      setKey: SettingBoxKey.biliSendCommAntifraud,
      defaultVal: false,
    ),
  SwitchModel(
    title: 'setting.extra.create_dyn_antifraud'.tr,
    subtitle: 'setting.extra.create_dyn_antifraud_desc'.tr,
    leading: const Icon(CustomIcons.shield_published),
    setKey: SettingBoxKey.enableCreateDynAntifraud,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.anti_goods_dyn'.tr,
    leading: const Icon(CustomIcons.shopping_bag_not_interested),
    setKey: SettingBoxKey.antiGoodsDyn,
    defaultVal: false,
    onChanged: (value) => DynamicsDataModel.antiGoodsDyn = value,
  ),
  SwitchModel(
    title: 'setting.extra.anti_goods_reply'.tr,
    leading: const Icon(CustomIcons.shopping_bag_not_interested),
    setKey: SettingBoxKey.antiGoodsReply,
    defaultVal: false,
    onChanged: (value) => ReplyGrpc.antiGoodsReply = value,
  ),
  SwitchModel(
    title: 'setting.extra.slide_dismiss_reply'.tr,
    leading: const Icon(CustomIcons.touch_app_rotate_270),
    setKey: SettingBoxKey.slideDismissReplyPage,
    defaultVal: Platform.isIOS,
    onChanged: (value) => CommonSlideMixin.slideDismissReplyPage = value,
  ),
  SwitchModel(
    title: 'setting.extra.shrink_video'.tr,
    leading: const Icon(Icons.pinch),
    setKey: SettingBoxKey.enableShrinkVideoSize,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.show_dyn_action_bar'.tr,
    leading: const Icon(Icons.more_horiz),
    setKey: SettingBoxKey.showDynActionBar,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.drag_subtitle'.tr,
    leading: const Icon(MdiIcons.dragVariant),
    setKey: SettingBoxKey.enableDragSubtitle,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.pgc_timeline'.tr,
    leading: const Icon(MdiIcons.chartTimelineVariantShimmer),
    setKey: SettingBoxKey.showPgcTimeline,
    defaultVal: true,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.extra.silent_download_img'.tr,
    subtitle: 'setting.extra.silent_download_img_desc'.tr,
    leading: const Icon(Icons.download_for_offline_outlined),
    setKey: SettingBoxKey.silentDownImg,
    defaultVal: false,
    onChanged: (value) => ImageUtils.silentDownImg = value,
  ),
  SwitchModel(
    title: 'setting.extra.img_menu'.tr,
    leading: const Icon(Icons.menu),
    setKey: SettingBoxKey.enableImgMenu,
    defaultVal: false,
    onChanged: (value) => ImageGridView.enableImgMenu = value,
  ),
  SwitchModel(
    setKey: SettingBoxKey.feedBackEnable,
    onChanged: (value) {
      enableFeedback = value;
      feedBack();
    },
    leading: const Icon(Icons.vibration_outlined),
    title: 'setting.extra.feedback'.tr,
    subtitle: 'setting.extra.feedback_desc'.tr,
  ),
  SwitchModel(
    title: 'setting.extra.hot_search'.tr,
    subtitle: 'setting.extra.hot_search_desc'.tr,
    leading: const Icon(Icons.data_thresholding_outlined),
    setKey: SettingBoxKey.enableHotKey,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.search_rcmd'.tr,
    subtitle: 'setting.extra.search_rcmd_desc'.tr,
    leading: const Icon(Icons.search_outlined),
    setKey: SettingBoxKey.enableSearchRcmd,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.extra.search_default_word'.tr,
    subtitle: 'setting.extra.search_default_word_desc'.tr,
    leading: const Icon(Icons.whatshot_outlined),
    setKey: SettingBoxKey.enableSearchWord,
    defaultVal: false,
    onChanged: (val) {
      try {
        final controller = Get.find<HomeController>()..enableSearchWord = val;
        if (val) {
          controller.querySearchDefault();
        } else {
          controller.defaultSearch.value = '';
        }
      } catch (_) {}
    },
  ),
  SwitchModel(
    title: 'setting.extra.quick_fav'.tr,
    subtitle: 'setting.extra.quick_fav_desc'.tr,
    leading: const Icon(Icons.bookmark_add_outlined),
    setKey: SettingBoxKey.enableQuickFav,
    onTap: _showFavDialog,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.reply_word_search'.tr,
    subtitle: 'setting.extra.reply_word_search_desc'.tr,
    leading: const Icon(Icons.search_outlined),
    setKey: SettingBoxKey.enableWordRe,
    defaultVal: false,
    onChanged: (value) => ReplyItemGrpc.enableWordRe = value,
  ),
  SwitchModel(
    title: 'setting.extra.ai_summary'.tr,
    subtitle: 'setting.extra.ai_summary_desc'.tr,
    leading: const Icon(Icons.engineering_outlined),
    setKey: SettingBoxKey.enableAi,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.disable_like_msg'.tr,
    subtitle: 'setting.extra.disable_like_msg_desc'.tr,
    leading: const Icon(Icons.beach_access_outlined),
    setKey: SettingBoxKey.disableLikeMsg,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.default_show_comment'.tr,
    subtitle: 'setting.extra.default_show_comment_desc'.tr,
    leading: const Icon(Icons.mode_comment_outlined),
    setKey: SettingBoxKey.defaultShowComment,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.extra.enable_http2'.tr,
    leading: const Icon(Icons.swap_horizontal_circle_outlined),
    setKey: SettingBoxKey.enableHttp2,
    defaultVal: false,
    needReboot: true,
  ),
  NormalModel(
    title: 'setting.extra.retry_count'.tr,
    subtitle: 'setting.extra.retry_count_desc'.tr,
    leading: const Icon(Icons.repeat),
    onTap: _showReplyCountDialog,
  ),
  NormalModel(
    title: 'setting.extra.retry_delay'.tr,
    subtitle: 'setting.extra.retry_delay_desc'.tr,
    leading: const Icon(Icons.more_time_outlined),
    onTap: _showReplyDelayDialog,
  ),
  NormalModel(
    title: 'setting.extra.reply_display'.tr,
    leading: const Icon(Icons.whatshot_outlined),
    getSubtitle: () => 'setting.extra.reply_display_cur'.trParams({
      'value': Pref.replySortType.title,
    }),
    onTap: _showReplySortDialog,
  ),
  NormalModel(
    title: 'setting.extra.dynamic_display'.tr,
    leading: const Icon(Icons.dynamic_feed_rounded),
    getSubtitle: () => 'setting.extra.dynamic_display_cur'.trParams({
      'value': Pref.defaultDynamicType.label,
    }),
    onTap: _showDefDynDialog,
  ),
  SwitchModel(
    title: 'setting.extra.dyn_interaction'.tr,
    subtitle: 'setting.extra.dyn_interaction_desc'.tr,
    leading: const Icon(Icons.quickreply_outlined),
    setKey: SettingBoxKey.showDynInteraction,
    defaultVal: true,
    onChanged: (val) => ItemModulesModel.showDynInteraction = val,
  ),
  NormalModel(
    title: 'setting.extra.member_default_tab'.tr,
    leading: const Icon(Icons.tab),
    getSubtitle: () => 'setting.extra.member_default_tab_cur'.trParams({
      'value': Pref.memberTab.title,
    }),
    onTap: _showMemberTabDialog,
  ),
  SwitchModel(
    title: 'setting.extra.member_shop_tab'.tr,
    leading: const Icon(Icons.shop_outlined),
    setKey: SettingBoxKey.showMemberShop,
    defaultVal: false,
    onChanged: (value) => MemberTabType.showMemberShop = value,
  ),
  SplitModel(
    normalModel: NormalModel.split(
      title: 'setting.extra.proxy'.tr,
      subtitle: 'setting.extra.proxy_desc'.tr,
      leading: const Icon(Icons.airplane_ticket_outlined),
    ),
    switchModel: SwitchModel.split(
      defaultVal: false,
      setKey: SettingBoxKey.enableSystemProxy,
      onTap: _showProxyDialog,
    ),
  ),
  NormalModel(
    title: 'setting.extra.max_cache_size'.tr,
    getSubtitle: () => 'setting.extra.max_cache_size_cur'.trParams({
      'value': CacheManager.formatSize(Pref.maxCacheSize),
    }),
    leading: const Icon(Icons.delete_outlined),
    onTap: _showCacheDialog,
  ),
  SwitchModel(
    title: 'setting.extra.auto_update'.tr,
    subtitle: 'setting.extra.auto_update_desc'.tr,
    leading: const Icon(Icons.system_update_alt),
    setKey: SettingBoxKey.autoUpdate,
    defaultVal: true,
    onChanged: (val) {
      if (val) {
        Update.checkUpdate(false);
      }
    },
  ),
];

Future<void> audioNormalization(
  BuildContext context,
  VoidCallback setState, {
  bool fallback = false,
}) async {
  final key = fallback
      ? SettingBoxKey.fallbackNormalization
      : SettingBoxKey.audioNormalization;
  final res = await showDialog<String>(
    context: context,
    builder: (context) {
      String audioNormalization = fallback
          ? Pref.fallbackNormalization
          : Pref.audioNormalization;
      Set<String> values = {
        '0',
        '1',
        if (!fallback) '2',
        audioNormalization,
        '3',
      };
      return SelectDialog<String>(
        title: fallback
            ? 'setting.extra.audio_norm_fallback_title'.tr
            : 'setting.extra.audio_norm'.tr,
        toggleable: true,
        value: audioNormalization,
        values: values
            .map(
              (e) => (
                e,
                switch (e) {
                  '0' => AudioNormalization.disable.title,
                  '1' => AudioNormalization.dynaudnorm.title,
                  '2' => AudioNormalization.loudnorm.title,
                  '3' => AudioNormalization.custom.title,
                  _ => e,
                },
              ),
            )
            .toList(),
      );
    },
  );
  if (res != null && context.mounted) {
    if (res == '3') {
      String param = '';
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('setting.extra.custom_param'.tr),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Text('setting.extra.audio_norm_custom_hint'.tr),
              TextField(
                autofocus: true,
                onChanged: (value) => param = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: Get.back,
              child: Text(
                'common.cancel'.tr,
                style: TextStyle(color: ColorScheme.of(context).outline),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                GStorage.setting.put(key, param);
                if (!fallback &&
                    PlPlayerController.loudnormRegExp.hasMatch(param)) {
                  audioNormalization(context, setState, fallback: true);
                }
                setState();
              },
              child: Text('common.confirm'.tr),
            ),
          ],
        ),
      );
    } else {
      GStorage.setting.put(key, res);
      if (res == '2') {
        audioNormalization(context, setState, fallback: true);
      }
      setState();
    }
  }
}

void _showDownPathDialog(BuildContext context, VoidCallback setState) {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      clipBehavior: Clip.hardEdge,
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      children: [
        DialogOption(
          onPressed: () {
            Get.back();
            Utils.copyText(downloadPath);
          },
          child: Text(
            'common.copy'.tr,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        DialogOption(
          onPressed: () {
            Get.back();
            final defPath = defDownloadPath;
            if (downloadPath == defPath) return;
            downloadPath = defPath;
            setState();
            Get.find<DownloadService>().initDownloadList();
            GStorage.setting.delete(SettingBoxKey.downloadPath);
          },
          child: Text(
            'common.reset'.tr,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        DialogOption(
          onPressed: () async {
            Get.back();
            final path = await FilePicker.getDirectoryPath();
            if (path == null || path == downloadPath) return;
            downloadPath = path;
            setState();
            Get.find<DownloadService>().initDownloadList();
            GStorage.setting.put(SettingBoxKey.downloadPath, path);
          },
          child: Text(
            'setting.extra.set_new_path'.tr,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    ),
  );
}

void _showDynDialog(BuildContext context) {
  String dynamicPeriod = Pref.dynamicPeriod.toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.dynamic_period'.tr),
      content: TextFormField(
        autofocus: true,
        initialValue: dynamicPeriod,
        keyboardType: TextInputType.number,
        onChanged: (value) => dynamicPeriod = value,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(suffixText: 'min'),
      ),
      actions: [
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
              final val = int.parse(dynamicPeriod);
              Get.back();
              GStorage.setting.put(SettingBoxKey.dynamicPeriod, val);
              Get.find<MainController>().dynamicPeriod = val * 60 * 1000;
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

void _showReplyLengthDialog(BuildContext context, VoidCallback setState) {
  String replyLengthLimit = ReplyItemGrpc.replyLengthLimit.toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.reply_collapse_lines'.tr),
      content: TextFormField(
        autofocus: true,
        initialValue: replyLengthLimit,
        keyboardType: TextInputType.number,
        onChanged: (value) => replyLengthLimit = value,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(suffixText: 'setting.extra.line_unit'.tr),
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              final val = int.parse(replyLengthLimit);
              Get.back();
              ReplyItemGrpc.replyLengthLimit = val == 0 ? null : val;
              await GStorage.setting.put(SettingBoxKey.replyLengthLimit, val);
              setState();
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

void _showDmHeightDialog(BuildContext context, VoidCallback setState) {
  String danmakuLineHeight = Pref.danmakuLineHeight.toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.dm_line_height'.tr),
      content: TextFormField(
        autofocus: true,
        initialValue: danmakuLineHeight,
        keyboardType: const .numberWithOptions(decimal: true),
        onChanged: (value) => danmakuLineHeight = value,
        inputFormatters: FilteringText.decimal,
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              final val = max(
                1.0,
                double.parse(danmakuLineHeight).toPrecision(1),
              );
              Get.back();
              await GStorage.setting.put(SettingBoxKey.danmakuLineHeight, val);
              setState();
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

void _showTouchSlopDialog(BuildContext context, VoidCallback setState) {
  String initialValue = Pref.touchSlopH.toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.touch_slop_h'.tr),
      content: TextFormField(
        autofocus: true,
        initialValue: initialValue,
        keyboardType: const .numberWithOptions(decimal: true),
        onChanged: (value) => initialValue = value,
        inputFormatters: FilteringText.decimal,
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              final val = double.parse(initialValue);
              Get.back();
              touchSlopH = val;
              await GStorage.setting.put(SettingBoxKey.touchSlopH, val);
              setState();
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

Future<void> _showRefreshDragDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.extra.refresh_drag'.tr),
      min: 0.1,
      max: 0.5,
      divisions: 8,
      precise: 2,
      value: Pref.refreshDragPercentage,
      suffix: 'x',
    ),
  );
  if (res != null) {
    kDragContainerExtentPercentage = res;
    await GStorage.setting.put(SettingBoxKey.refreshDragPercentage, res);
    setState();
  }
}

Future<void> _showRefreshDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.extra.refresh_displacement'.tr),
      min: 10.0,
      max: 100.0,
      divisions: 9,
      value: Pref.refreshDisplacement,
    ),
  );
  if (res != null) {
    displacement = res;
    await GStorage.setting.put(SettingBoxKey.refreshDisplacement, res);
    if (WidgetsBinding.instance.rootElement case final context?) {
      context.visitChildElements(_visitor);
    }
    setState();
  }
}

void _visitor(Element context) {
  if (!context.mounted) return;
  if (context.widget is RefreshIndicator) {
    context.markNeedsBuild();
  } else {
    context.visitChildren(_visitor);
  }
}

Future<void> _showSuperResolutionDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<SuperResolutionType>(
    context: context,
    builder: (context) => SelectDialog<SuperResolutionType>(
      title: 'setting.extra.super_resolution'.tr,
      value: Pref.superResolutionType,
      values: SuperResolutionType.values.map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.superResolutionType,
      res.index,
    );
    setState();
  }
}

Future<void> _showFavDialog(BuildContext context) async {
  if (Accounts.main.isLogin) {
    final res = await FavHttp.allFavFolders(Accounts.main.mid);
    if (res case Success(:final response)) {
      final list = response.list;
      if (list == null || list.isEmpty) {
        return;
      }
      final quickFavId = Pref.quickFavId;
      if (!context.mounted) return;
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          clipBehavior: Clip.hardEdge,
          title: Text('setting.extra.select_default_fav'.tr),
          contentPadding: const EdgeInsets.only(top: 5, bottom: 18),
          content: SingleChildScrollView(
            child: RadioGroup(
              onChanged: (value) {
                Get.back();
                GStorage.setting.put(SettingBoxKey.quickFavId, value);
                SmartDialog.showToast('common.set_success'.tr);
              },
              groupValue: quickFavId,
              child: Column(
                children: list
                    .map(
                      (item) => RadioListTile(
                        toggleable: true,
                        dense: true,
                        title: Text(item.title),
                        value: item.id,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      );
    } else {
      res.toast();
    }
  }
}

Future<void> _showReplyCountDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.extra.retry_count'.tr),
      min: 0,
      max: 8,
      divisions: 8,
      precise: 0,
      value: Pref.retryCount.toDouble(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.retryCount, res.toInt());
    setState();
    SmartDialog.showToast('common.reboot_effect'.tr);
  }
}

Future<void> _showReplyDelayDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.extra.retry_delay'.tr),
      min: 0,
      max: 1000,
      divisions: 10,
      precise: 0,
      value: Pref.retryDelay.toDouble(),
      suffix: 'ms',
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.retryDelay, res.toInt());
    setState();
    SmartDialog.showToast('common.reboot_effect'.tr);
  }
}

Future<void> _showReplySortDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<ReplySortType>(
    context: context,
    builder: (context) => SelectDialog<ReplySortType>(
      title: 'setting.extra.reply_display'.tr,
      value: Pref.replySortType,
      values: ReplySortType.values.take(2).map((e) => (e, e.title)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.replySortType, res.index);
    setState();
  }
}

Future<void> _showDefDynDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<DynamicsTabType>(
    context: context,
    builder: (context) => SelectDialog<DynamicsTabType>(
      title: 'setting.extra.dynamic_display'.tr,
      value: Pref.defaultDynamicType,
      values: DynamicsTabType.values.take(4).map((e) => (e, e.label)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.defaultDynamicType,
      res.index,
    );
    setState();
  }
}

Future<void> _showMemberTabDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<MemberTabType>(
    context: context,
    builder: (context) => SelectDialog<MemberTabType>(
      title: 'setting.extra.member_default_tab'.tr,
      value: Pref.memberTab,
      values: MemberTabType.values.map((e) => (e, e.title)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.memberTab, res.index);
    setState();
  }
}

void _showProxyDialog(BuildContext context) {
  String systemProxyHost = Pref.systemProxyHost;
  String systemProxyPort = Pref.systemProxyPort;

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.proxy'.tr),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 6),
          TextFormField(
            initialValue: systemProxyHost,
            decoration: InputDecoration(
              isDense: true,
              labelText: 'setting.extra.proxy_host_label'.tr,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
            ),
            onChanged: (e) => systemProxyHost = e,
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: systemProxyPort,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              isDense: true,
              labelText: 'setting.extra.proxy_port_label'.tr,
              border: const OutlineInputBorder(
                borderRadius: .all(.circular(6)),
              ),
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (e) => systemProxyPort = e,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.back();
            GStorage.setting.put(
              SettingBoxKey.systemProxyHost,
              systemProxyHost,
            );
            GStorage.setting.put(
              SettingBoxKey.systemProxyPort,
              systemProxyPort,
            );
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

void _showCacheDialog(BuildContext context, VoidCallback setState) {
  String valueStr = '';
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.extra.max_cache_size'.tr),
      content: TextField(
        autofocus: true,
        onChanged: (value) => valueStr = value,
        keyboardType: TextInputType.number,
        inputFormatters: FilteringText.decimal,
        decoration: const InputDecoration(suffixText: 'MB'),
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              final val = num.parse(valueStr);
              Get.back();
              await GStorage.setting.put(
                SettingBoxKey.maxCacheSize,
                val * 1024 * 1024,
              );
              setState();
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
