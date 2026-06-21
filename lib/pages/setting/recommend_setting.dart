import 'package:PiliPlus/common/widgets/flutter/list_tile.dart';
import 'package:PiliPlus/pages/setting/models/recommend_settings.dart';
import 'package:flutter/material.dart' hide ListTile;
import 'package:get/get.dart';

class RecommendSetting extends StatefulWidget {
  const RecommendSetting({super.key, this.showAppBar = true});

  final bool showAppBar;

  @override
  State<RecommendSetting> createState() => _RecommendSettingState();
}

class _RecommendSettingState extends State<RecommendSetting> {
  final list = recommendSettings;

  @override
  Widget build(BuildContext context) {
    final showAppBar = widget.showAppBar;
    final padding = MediaQuery.viewPaddingOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: widget.showAppBar
          ? AppBar(title: Text('setting.recommend.title'.tr))
          : null,
      body: ListView(
        padding: EdgeInsets.only(
          left: showAppBar ? padding.left : 0,
          right: showAppBar ? padding.right : 0,
          bottom: padding.bottom + 100,
        ),
        children: [
          ...list.take(4).map((item) => item.widget),
          const Divider(height: 1),
          ...list.skip(4).map((item) => item.widget),
          ListTile(
            dense: true,
            subtitle: Text(
              'setting.recommend.footnote'.tr,
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.outline.withValues(alpha: 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
