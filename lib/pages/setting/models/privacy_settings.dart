import 'package:PiliPlus/models/common/account_type.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/accounts/api_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

List<SettingsModel> get privacySettings => [
  NormalModel(
    onTap: (context, setState) {
      if (!Accounts.main.isLogin) {
        SmartDialog.showToast('setting.privacy.login_to_view'.tr);
        return;
      }
      Get.toNamed('/blackListPage');
    },
    title: 'setting.privacy.blocklist_mgmt'.tr,
    subtitle: 'setting.privacy.blocked_users'.tr,
    leading: const Icon(Icons.block),
  ),
  NormalModel(
    onTap: (context, setState) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('setting.privacy.account_mode_detail'.tr),
          content: SingleChildScrollView(child: _getAccountDetail(context)),
          actions: [
            TextButton(
              onPressed: Get.back,
              child: Text('common.confirm'.tr),
            ),
          ],
        ),
      );
    },
    leading: const Icon(Icons.flag_outlined),
    title: 'setting.privacy.learn_account_mode'.tr,
    subtitle: 'setting.privacy.account_mode_desc'.tr,
  ),
];

Widget _getAccountDetail(BuildContext context) {
  final slivers = <Widget>[];
  final theme = TextTheme.of(context);
  for (final i in AccountType.values) {
    final url = ApiType.apiTypeSet[i];
    if (url == null) continue;

    slivers
      ..add(Center(child: Text(i.title, style: theme.titleMedium)))
      ..add(SelectableText(url.join('\n')));
  }
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: slivers,
  );
}
