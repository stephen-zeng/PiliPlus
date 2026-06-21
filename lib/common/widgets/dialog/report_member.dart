import 'package:PiliPlus/http/member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

List<String> get _reason => [
  'report.member.avatar_violation'.tr,
  'report.member.nickname_violation'.tr,
  'report.member.signature_violation'.tr,
];

List<String> get _reasonV2 => [
  'report.member.porn'.tr,
  'report.member.misinformation'.tr,
  'report.member.illegal'.tr,
  'report.member.personal_attack'.tr,
  'report.member.gambling'.tr,
  'report.member.link_spam'.tr,
];

Future<void> showMemberReportDialog(
  BuildContext context, {
  required Object? name,
  required Object mid,
}) {
  final Set<int> reason = {};
  int? reasonV2;

  return showDialog(
    context: context,
    builder: (context) {
      final theme = Theme.of(context);
      return AlertDialog(
        clipBehavior: Clip.hardEdge,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        titleTextStyle: theme.textTheme.bodyMedium,
        title: Column(
          spacing: 4,
          crossAxisAlignment: .start,
          children: [
            Text(
              'report.member.title'.trParams({'name': '$name'}),
              style: const TextStyle(fontSize: 18),
            ),
            Text('uid: $mid'),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Padding(
                padding: const .only(left: 18),
                child: Text('report.member.required_header'.tr),
              ),
              ...List.generate(
                3,
                (index) => Builder(
                  builder: (context) {
                    final checked = reason.contains(index + 1);
                    return ListTile(
                      dense: true,
                      minTileHeight: 40,
                      onTap: () {
                        if (!checked) {
                          reason.add(index + 1);
                        } else {
                          reason.remove(index + 1);
                        }
                        (context as Element).markNeedsBuild();
                      },
                      title: Row(
                        spacing: 8,
                        children: [
                          checked
                              ? Icon(
                                  size: 22,
                                  Icons.check_box,
                                  color: theme.colorScheme.primary,
                                )
                              : Icon(
                                  size: 22,
                                  Icons.check_box_outline_blank,
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                          Expanded(
                            child: Text(
                              _reason[index],
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const .only(left: 18),
                child: Text('report.member.optional_header'.tr),
              ),
              Builder(
                builder: (context) => Column(
                  crossAxisAlignment: .start,
                  children: List.generate(
                    _reasonV2.length,
                    (index) {
                      final checked = index == reasonV2;
                      return ListTile(
                        dense: true,
                        minTileHeight: 40,
                        onTap: () {
                          if (checked) {
                            reasonV2 = null;
                          } else {
                            reasonV2 = index;
                          }
                          (context as Element).markNeedsBuild();
                        },
                        title: Row(
                          spacing: 8,
                          children: [
                            checked
                                ? Icon(
                                    size: 22,
                                    Icons.radio_button_checked,
                                    color: theme.colorScheme.primary,
                                  )
                                : Icon(
                                    size: 22,
                                    Icons.radio_button_off,
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                            Expanded(
                              child: Text(
                                _reasonV2[index],
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: Get.back,
            child: Text(
              'common.cancel'.tr,
              style: TextStyle(color: theme.colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () {
              if (reason.isEmpty) {
                SmartDialog.showToast('report.member.at_least_one'.tr);
              } else {
                Get.back();
                MemberHttp.reportMember(
                  mid,
                  reason: reason.join(','),
                  reasonV2: reasonV2 != null ? reasonV2! + 1 : null,
                );
              }
            },
            child: Text('common.confirm'.tr),
          ),
        ],
      );
    },
  );
}
