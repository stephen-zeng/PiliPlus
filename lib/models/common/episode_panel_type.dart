import 'package:get/get.dart';

enum EpisodeType {
  part('enum.episode.part'),
  season('enum.episode.season'),
  pgc('enum.episode.pgc'),
  ;

  final String _titleKey;
  const EpisodeType(this._titleKey);
  String get title => _titleKey.tr;
}
