import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> showConfirmDialog({
  required BuildContext context,
  required Widget title,
  Widget? content,
  // @Deprecated('use `bool result = await showConfirmDialog()` instead')
  VoidCallback? onConfirm,
}) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: title,
          content: content,
          actions: [
            TextButton(
              onPressed: Get.back,
              child: Text(
                'common.cancel'.tr,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: true);
                onConfirm?.call();
              },
              child: Text('common.confirm'.tr),
            ),
          ],
        ),
      ) ??
      false;
}

void showPgcFollowDialog({
  required BuildContext context,
  required String type,
  required int followStatus,
  required ValueChanged<int> onUpdateStatus,
}) {
  Widget statusItem({
    required bool enabled,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      dense: true,
      enabled: enabled,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'dialog.mark_as'.trParams({'text': text}),
          style: const TextStyle(fontSize: 14),
        ),
      ),
      trailing: !enabled ? const Icon(size: 22, Icons.check) : null,
      onTap: onTap,
    );
  }

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      clipBehavior: Clip.hardEdge,
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...[
            (followStatus: 3, title: 'dialog.pgc.watched'),
            (followStatus: 2, title: 'dialog.pgc.watching'),
            (followStatus: 1, title: 'dialog.pgc.plan_to_watch'),
          ].map(
            (item) => statusItem(
              enabled: followStatus != item.followStatus,
              text: item.title.tr,
              onTap: () {
                Get.back();
                onUpdateStatus(item.followStatus);
              },
            ),
          ),
          ListTile(
            dense: true,
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'dialog.pgc.cancel'.trParams({'type': type}),
                style: const TextStyle(fontSize: 14),
              ),
            ),
            onTap: () {
              Get.back();
              onUpdateStatus(-1);
            },
          ),
        ],
      ),
    ),
  );
}
