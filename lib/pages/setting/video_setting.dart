import 'package:PiliPlus/pages/setting/models/video_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoSetting extends StatefulWidget {
  const VideoSetting({super.key, this.showAppBar = true});

  final bool showAppBar;

  @override
  State<VideoSetting> createState() => _VideoSettingState();
}

class _VideoSettingState extends State<VideoSetting> {
  final settings = videoSettings;

  @override
  Widget build(BuildContext context) {
    final showAppBar = widget.showAppBar;
    final padding = MediaQuery.viewPaddingOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: showAppBar ? AppBar(title: Text('setting.video.title'.tr)) : null,
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
