import 'package:get/get.dart';
class SpaceSettingModel {
  SpaceSettingModel({
    required this.name,
    required this.key,
    required this.value,
    this.isReverse = false,
  });

  String name;
  String key;
  int? value;
  bool isReverse;

  bool get boolVal => isReverse ? value == 0 : value == 1;
}

class Privacy {
  List<SpaceSettingModel> list1;
  List<SpaceSettingModel> list2;
  List<SpaceSettingModel> list3;

  Privacy({
    required this.list1,
    required this.list2,
    required this.list3,
  });

  factory Privacy.fromJson(Map<String, dynamic> json) => Privacy(
    list1: [
      SpaceSettingModel(
        name: 'general.make_my_collection_public'.tr,
        key: 'fav_video',
        value: json['fav_video'],
      ),
      SpaceSettingModel(
        name: 'general.publicize_my_fanwatching_dramas'.tr,
        key: 'bangumi',
        value: json['bangumi'],
      ),
      SpaceSettingModel(
        name: 'general.reveal_my_comic_strips'.tr,
        key: 'comic',
        value: json['comic'],
      ),
      SpaceSettingModel(
        name: 'general.publicize_recent_cointossed_videos'.tr,
        key: 'coins_video',
        value: json['coins_video'],
      ),
      SpaceSettingModel(
        name: 'general.publicize_recently_liked_videos'.tr,
        key: 'likes_video',
        value: json['likes_video'],
      ),
      SpaceSettingModel(
        name: 'general.publish_recently_played_games'.tr,
        key: 'played_game',
        value: json['played_game'],
      ),
      SpaceSettingModel(
        name: 'general.publicly_owned_fan_costumes'.tr,
        key: 'dress_up',
        value: json['dress_up'],
      ),
      SpaceSettingModel(
        name: 'general.make_my_watchlist_public'.tr,
        key: 'disable_following',
        value: json['disable_following'],
        isReverse: true,
      ),
      SpaceSettingModel(
        name: 'general.make_my_fan_list_public'.tr,
        key: 'disable_show_fans',
        value: json['disable_show_fans'],
        isReverse: true,
      ),
    ],
    list2: [
      SpaceSettingModel(
        name: 'general.fan_medals_worn_publicly'.tr,
        key: 'close_space_medal',
        value: json['close_space_medal'],
        isReverse: true,
      ),
      SpaceSettingModel(
        name: 'general.the_medal_wall_publicly_displays'.tr,
        key: 'only_show_wearing',
        value: json['only_show_wearing'],
        isReverse: true,
      ),
      SpaceSettingModel(
        name: 'general.disclose_school_information'.tr,
        key: 'disable_show_school',
        value: json['disable_show_school'],
        isReverse: true,
      ),
    ],
    list3: [
      SpaceSettingModel(
        name: 'general.show_live_replays_in_the'.tr,
        key: 'live_playback',
        value: json['live_playback'],
      ),
      SpaceSettingModel(
        name: 'general.exclusive_videos_for_monthly_charging'.tr,
        key: 'charge_video',
        value: json['charge_video'],
      ),
      SpaceSettingModel(
        name: 'general.display_class_videos_in_the'.tr,
        key: 'lesson_video',
        value: json['lesson_video'],
      ),
    ],
  );
}
