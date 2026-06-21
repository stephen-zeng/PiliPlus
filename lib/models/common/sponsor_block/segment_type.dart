// ignore_for_file: constant_identifier_names

import 'dart:ui';

import 'package:PiliPlus/models/common/sponsor_block/action_type.dart';
import 'package:get/get.dart';

enum SegmentType {
  sponsor(
    'enum.sb_segment.sponsor.title',
    'enum.sb_segment.sponsor.short',
    'enum.sb_segment.sponsor.desc',
    Color(0xFF00d400),
    [ActionType.skip, ActionType.mute, ActionType.full],
  ),
  selfpromo(
    'enum.sb_segment.selfpromo.title',
    'enum.sb_segment.selfpromo.short',
    'enum.sb_segment.selfpromo.desc',
    Color(0xFFffff00),
    [ActionType.skip, ActionType.mute, ActionType.full],
  ),
  exclusive_access(
    'enum.sb_segment.exclusive_access.title',
    'enum.sb_segment.exclusive_access.short',
    'enum.sb_segment.exclusive_access.desc',
    Color(0xFF008a5c),
    [ActionType.full],
  ),
  interaction(
    'enum.sb_segment.interaction.title',
    'enum.sb_segment.interaction.short',
    'enum.sb_segment.interaction.desc',
    Color(0xFFcc00ff),
    [ActionType.skip, ActionType.mute],
  ),
  poi_highlight(
    'enum.sb_segment.poi_highlight.title',
    'enum.sb_segment.poi_highlight.short',
    'enum.sb_segment.poi_highlight.desc',
    Color(0xFFff1684),
    [ActionType.poi],
  ),
  intro(
    'enum.sb_segment.intro.title',
    'enum.sb_segment.intro.short',
    'enum.sb_segment.intro.desc',
    Color(0xFF00ffff),
    [ActionType.skip, ActionType.mute],
  ),
  outro(
    'enum.sb_segment.outro.title',
    'enum.sb_segment.outro.short',
    'enum.sb_segment.outro.desc',
    Color(0xFF0202ed),
    [ActionType.skip, ActionType.mute],
  ),
  preview(
    'enum.sb_segment.preview.title',
    'enum.sb_segment.preview.short',
    'enum.sb_segment.preview.desc',
    Color(0xFF008fd6),
    [ActionType.skip, ActionType.mute],
  ),
  padding(
    'enum.sb_segment.padding.title',
    'enum.sb_segment.padding.short',
    'enum.sb_segment.padding.desc',
    Color(0xFF222222),
    [ActionType.skip],
  ),
  filler(
    'enum.sb_segment.filler.title',
    'enum.sb_segment.filler.short',
    'enum.sb_segment.filler.desc',
    Color(0xFF7300FF),
    [ActionType.skip, ActionType.mute],
  ),
  music_offtopic(
    'enum.sb_segment.music_offtopic.title',
    'enum.sb_segment.music_offtopic.short',
    'enum.sb_segment.music_offtopic.desc',
    Color(0xFFff9900),
    [ActionType.skip],
  ),
  ;

  final String _titleKey;
  final String _shortTitleKey;
  final String _descriptionKey;
  final Color color;
  final List<ActionType> toActionType;

  const SegmentType(
    this._titleKey,
    this._shortTitleKey,
    this._descriptionKey,
    this.color,
    this.toActionType,
  );

  String get title => _titleKey.tr;
  String get shortTitle => _shortTitleKey.tr;
  String get description => _descriptionKey.tr;
}
