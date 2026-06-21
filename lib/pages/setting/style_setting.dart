import 'package:PiliPlus/pages/setting/models/style_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StyleSetting extends StatefulWidget {
  const StyleSetting({super.key, this.showAppBar = true});

  final bool showAppBar;

  @override
  State<StyleSetting> createState() => _StyleSettingState();
}

class _StyleSettingState extends State<StyleSetting> {
  final settings = styleSettings;

  @override
  Widget build(BuildContext context) {
    final showAppBar = widget.showAppBar;
    final padding = MediaQuery.viewPaddingOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: showAppBar ? AppBar(title: Text('setting.style.title'.tr)) : null,
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
