import 'package:get/get.dart';

enum DynamicsTabType {
  all('enum.dynamics_tab.all'),
  video('enum.dynamics_tab.video'),
  pgc('enum.dynamics_tab.pgc'),
  article('enum.dynamics_tab.article'),
  up('enum.dynamics_tab.up'),
  ;

  final String _labelKey;
  const DynamicsTabType(this._labelKey);

  String get label => _labelKey.tr;
}
