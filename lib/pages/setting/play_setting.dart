import 'package:PiliPlus/pages/setting/models/play_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaySetting extends StatefulWidget {
  const PlaySetting({super.key, this.showAppBar = true});

  final bool showAppBar;

  @override
  State<PlaySetting> createState() => _PlaySettingState();
}

class _PlaySettingState extends State<PlaySetting> {
  final settings = playSettings;

  @override
  Widget build(BuildContext context) {
    final showAppBar = widget.showAppBar;
    final padding = MediaQuery.viewPaddingOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: showAppBar ? AppBar(title: Text('setting.play.title'.tr)) : null,
      body: ListView.builder(
        padding: EdgeInsets.only(
          left: showAppBar ? padding.left : 0,
          right: showAppBar ? padding.right : 0,
          bottom: padding.bottom + 100,
        ),
        itemCount: settings.length,
        itemBuilder: (context, index) => settings[index].widget,
      ),
    );
  }
}
