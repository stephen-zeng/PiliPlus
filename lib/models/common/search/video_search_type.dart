import 'package:get/get.dart';

enum VideoPubTimeType {
  all('enum.video_pub_time.all'),
  day('enum.video_pub_time.day'),
  week('enum.video_pub_time.week'),
  halfYear('enum.video_pub_time.half_year'),
  ;

  final String _labelKey;
  const VideoPubTimeType(this._labelKey);
  String get label => _labelKey.tr;
}

enum VideoDurationType {
  all('enum.video_duration.all'),
  tenMins('enum.video_duration.10m'),
  halfHour('enum.video_duration.30m'),
  hour('enum.video_duration.60m'),
  hourPlus('enum.video_duration.60m_plus'),
  ;

  final String _labelKey;
  const VideoDurationType(this._labelKey);
  String get label => _labelKey.tr;
}

enum VideoZoneType {
  all('enum.video_zone.all'),
  douga('enum.video_zone.douga', tids: 1),
  anime('enum.video_zone.anime', tids: 13),
  guochuang('enum.video_zone.guochuang', tids: 167),
  music('enum.video_zone.music', tids: 3),
  dance('enum.video_zone.dance', tids: 129),
  game('enum.video_zone.game', tids: 4),
  knowledge('enum.video_zone.knowledge', tids: 36),
  tech('enum.video_zone.tech', tids: 188),
  sports('enum.video_zone.sports', tids: 234),
  car('enum.video_zone.car', tids: 223),
  life('enum.video_zone.life', tids: 160),
  food('enum.video_zone.food', tids: 221),
  animal('enum.video_zone.animal', tids: 217),
  kichiku('enum.video_zone.kichiku', tids: 119),
  fashion('enum.video_zone.fashion', tids: 115),
  info('enum.video_zone.info', tids: 202),
  ent('enum.video_zone.ent', tids: 5),
  cinephile('enum.video_zone.cinephile', tids: 181),
  documentary('enum.video_zone.documentary', tids: 177),
  movie('enum.video_zone.movie', tids: 23),
  tv('enum.video_zone.tv', tids: 11),
  ;

  final String _labelKey;
  final int? tids;
  const VideoZoneType(this._labelKey, {this.tids});
  String get label => _labelKey.tr;
}

enum ArchiveFilterType {
  totalrank('enum.archive_filter.totalrank'),
  click('enum.archive_filter.click'),
  pubdate('enum.archive_filter.pubdate'),
  dm('enum.archive_filter.dm'),
  stow('enum.archive_filter.stow'),
  scores('enum.archive_filter.scores'),
  ;

  final String _descKey;
  const ArchiveFilterType(this._descKey);
  String get desc => _descKey.tr;
}
