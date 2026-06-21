// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

enum LiveContributionRankType {
  online_rank('enum.live_rank.online', 'contribution_rank'),
  daily_rank('enum.live_rank.daily', 'today_rank'),
  weekly_rank('enum.live_rank.weekly', 'current_week_rank'),
  monthly_rank('enum.live_rank.monthly', 'current_month_rank'),
  ;

  final String _titleKey;
  final String sw1tch;
  const LiveContributionRankType(this._titleKey, this.sw1tch);
  String get title => _titleKey.tr;
}
