import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/hot/controller.dart';
import 'package:PiliPlus/pages/hot/view.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/live/view.dart';
import 'package:PiliPlus/pages/pgc/controller.dart';
import 'package:PiliPlus/pages/pgc/view.dart';
import 'package:PiliPlus/pages/rank/controller.dart';
import 'package:PiliPlus/pages/rank/view.dart';
import 'package:PiliPlus/pages/rcmd/controller.dart';
import 'package:PiliPlus/pages/rcmd/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum HomeTabType implements EnumWithLabel {
  live('enum.home.live'),
  rcmd('enum.home.rcmd'),
  hot('enum.home.hot'),
  rank('enum.home.rank'),
  bangumi('enum.home.bangumi'),
  cinema('enum.home.cinema'),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  const HomeTabType(this._labelKey);

  ScrollOrRefreshMixin Function() get ctr => switch (this) {
    HomeTabType.live => Get.find<LiveController>,
    HomeTabType.rcmd => Get.find<RcmdController>,
    HomeTabType.hot => Get.find<HotController>,
    HomeTabType.rank => Get.find<RankController>,
    HomeTabType.bangumi ||
    HomeTabType.cinema => () => Get.find<PgcController>(tag: name),
  };

  Widget get page => switch (this) {
    HomeTabType.live => const LivePage(),
    HomeTabType.rcmd => const RcmdPage(),
    HomeTabType.hot => const HotPage(),
    HomeTabType.rank => const RankPage(),
    HomeTabType.bangumi => const PgcPage(tabType: HomeTabType.bangumi),
    HomeTabType.cinema => const PgcPage(tabType: HomeTabType.cinema),
  };
}
