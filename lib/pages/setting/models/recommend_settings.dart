import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/rcmd/controller.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/utils/recommend_filter.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<SettingsModel> get recommendSettings => [
  SwitchModel(
    title: 'setting.recommend.app_rcmd'.tr,
    subtitle: 'setting.recommend.app_rcmd_desc'.tr,
    leading: const Icon(Icons.model_training_outlined),
    setKey: SettingBoxKey.appRcmd,
    defaultVal: true,
    needReboot: true,
  ),
  SwitchModel(
    title: 'setting.recommend.save_refresh'.tr,
    subtitle: 'setting.recommend.save_refresh_desc'.tr,
    leading: const Icon(Icons.refresh),
    setKey: SettingBoxKey.enableSaveLastData,
    defaultVal: true,
    onChanged: (value) {
      try {
        Get.find<RcmdController>()
          ..enableSaveLastData = value
          ..lastRefreshAt = null;
      } catch (e) {
        if (kDebugMode) debugPrint('$e');
      }
    },
  ),
  SwitchModel(
    title: 'setting.recommend.show_last_pos'.tr,
    subtitle: 'setting.recommend.show_last_pos_desc'.tr,
    leading: const Icon(Icons.tips_and_updates_outlined),
    setKey: SettingBoxKey.savedRcmdTip,
    defaultVal: true,
    onChanged: (value) {
      try {
        Get.find<RcmdController>()
          ..savedRcmdTip = value
          ..lastRefreshAt = null;
      } catch (e) {
        if (kDebugMode) debugPrint('$e');
      }
    },
  ),
  getVideoFilterSelectModel(
    title: 'setting.recommend.like_ratio'.tr,
    suffix: '%',
    key: SettingBoxKey.minLikeRatioForRecommend,
    values: [0, 1, 2, 3, 4],
    onChanged: (value) => RecommendFilter.minLikeRatioForRecommend = value,
  ),
  getBanWordModel(
    title: 'setting.recommend.title_kw_filter'.tr,
    key: SettingBoxKey.banWordForRecommend,
    onChanged: (value) {
      RecommendFilter.rcmdRegExp = value;
      RecommendFilter.enableFilter = value.pattern.isNotEmpty;
    },
  ),
  getBanWordModel(
    title: 'setting.recommend.zone_kw_filter'.tr,
    key: SettingBoxKey.banWordForZone,
    onChanged: (value) {
      VideoHttp.zoneRegExp = value;
      VideoHttp.enableFilter = value.pattern.isNotEmpty;
    },
  ),
  getVideoFilterSelectModel(
    title: 'setting.recommend.duration'.tr,
    suffix: 's',
    key: SettingBoxKey.minDurationForRcmd,
    values: [0, 30, 60, 90, 120],
    onChanged: (value) => RecommendFilter.minDurationForRcmd = value,
  ),
  getVideoFilterSelectModel(
    title: 'setting.recommend.play_count'.tr,
    key: SettingBoxKey.minPlayForRcmd,
    values: [0, 50, 100, 500, 1000],
    onChanged: (value) => RecommendFilter.minPlayForRcmd = value,
  ),
  SwitchModel(
    title: 'setting.recommend.exempt_followed'.tr,
    subtitle: 'setting.recommend.exempt_followed_desc'.tr,
    leading: const Icon(Icons.favorite_border_outlined),
    setKey: SettingBoxKey.exemptFilterForFollowed,
    defaultVal: true,
    onChanged: (value) => RecommendFilter.exemptFilterForFollowed = value,
  ),
  SwitchModel(
    title: 'setting.recommend.filter_related'.tr,
    subtitle: 'setting.recommend.filter_related_desc'.tr,
    leading: const Icon(Icons.explore_outlined),
    setKey: SettingBoxKey.applyFilterToRelatedVideos,
    defaultVal: true,
    onChanged: (value) => RecommendFilter.applyFilterToRelatedVideos = value,
  ),
];
