import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/radio_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/utils/extension/string_ext.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_ui/material_ui.dart';

typedef ReasonCheck = bool Function(int? reasonType);

bool _kReportCheck(int? reasonType) => reasonType == 0;

typedef OnReport = Future<LoadingState> Function(
  int reasonType,
  String? reasonDesc,
  bool banUid,
);

Future<void> autoWrapReportDialog(
  BuildContext context,
  Map<String, Map<int, String>> options,
  OnReport onReport, {
  bool ban = true,
  String? reportUrl,
  ReasonCheck withContent = _kReportCheck,
  ReasonCheck contentRequired = _kReportCheck,
}) {
  int? reasonType;
  String? reasonDesc;
  bool banUid = false;
  late final key = GlobalKey<FormFieldState<String>>();

  bool isWithContent = withContent(reasonType);
  bool isContentRequired = contentRequired(reasonType);

  void updateReasonType(int? value) {
    reasonType = value;
    isWithContent = withContent(reasonType);
    isContentRequired = contentRequired(reasonType);
    if (isWithContent) {
      key.currentState?.clearError();
    }
  }

  Widget title = const Text('举报');
  if (reportUrl != null) {
    title = Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        title,
        iconButton(
          iconSize: 21,
          tooltip: '网页举报',
          onPressed: () =>
              Get.toNamed('/webview', parameters: {'url': reportUrl}),
          icon: const Icon(MdiIcons.web, size: 22),
        ),
      ],
    );
  }

  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('report.title'.tr),
      titlePadding: const .only(left: 22, top: 16, right: 22),
      contentPadding: const .symmetric(vertical: 5),
      actionsPadding: const .only(left: 16, right: 16, bottom: 10),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 200),
                child: Builder(
                  builder: (context) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const .only(left: 22, right: 22, bottom: 5),
                        child: Text('report.select_reason'.tr),
                      ),
                      RadioGroup(
                        onChanged: (value) {
                          updateReasonType(value);
                          (context as Element).markNeedsBuild();
                        },
                        groupValue: reasonType,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: options.entries.map((entry) {
                            return WrapRadioOptionsGroup<int>(
                              groupTitle: entry.key,
                              options: entry.value,
                            );
                          }).toList(),
                        ),
                      ),
                      if (isWithContent)
                        Padding(
                          padding: const .only(left: 22, top: 5, right: 22),
                          child: TextFormField(
                            key: key,
                            minLines: 2,
                            maxLines: 4,
                            initialValue: reasonDesc,
                            decoration: InputDecoration(
                              labelText: 'report.additional_info'.tr,
                              border: const OutlineInputBorder(),
                              contentPadding: const .all(10),
                              labelStyle: const TextStyle(fontSize: 14),
                              floatingLabelStyle: const TextStyle(fontSize: 14),
                            ),
                            onChanged: (value) => reasonDesc = value,
                            validator: (value) => value.isNullOrEmpty
                                ? 'report.reason_empty'.tr
                                : null,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (ban)
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 6),
              child: CheckBoxText(
                text: 'report.block_user'.tr,
                onChanged: (value) => banUid = value,
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            if (reasonType == null ||
                (isContentRequired && key.currentState?.validate() != true)) {
              return;
            }
            SmartDialog.showLoading();
            try {
              final res = await onReport(
                reasonType!,
                isWithContent ? reasonDesc : null,
                banUid,
              );
              SmartDialog.dismiss();
              if (res.isSuccess) {
                Get.back();
                SmartDialog.showToast('report.success'.tr);
              } else {
                res.toast();
              }
            } catch (e, s) {
              SmartDialog.dismiss();
              SmartDialog.showToast(
                'report.submit_failed'.trParams({'e': '$e'}),
              );
              Utils.reportError(e, s);
            }
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

class CheckBoxText extends StatefulWidget {
  final String text;
  final ValueChanged<bool> onChanged;
  final bool selected;

  const CheckBoxText({
    super.key,
    required this.text,
    required this.onChanged,
    this.selected = false,
  });

  @override
  State<CheckBoxText> createState() => _CheckBoxTextState();
}

class _CheckBoxTextState extends State<CheckBoxText> {
  late bool _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          _selected = !_selected;
          widget.onChanged(_selected);
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              size: 22,
              _selected
                  ? Icons.check_box_outlined
                  : Icons.check_box_outline_blank,
              color: _selected
                  ? colorScheme.primary
                  : colorScheme.onSurfaceVariant,
            ),
            Text(
              ' ${widget.text}',
              style: TextStyle(color: _selected ? colorScheme.primary : null),
            ),
          ],
        ),
      ),
    );
  }
}

abstract final class ReportOptions {
  // from https://s1.hdslb.com/bfs/seed/jinkela/comment-h5/static/js/605.chunks.js
  static Map<String, Map<int, String>> get commentReport => {
    'common.violating_laws_and_regulations'.tr: {
      9: 'common.illegal_non_compliant'.tr,
      2: 'common.pornography'.tr,
      10: 'common.vulgar'.tr,
      12: 'report.member.gambling'.tr,
      23: 'common.illegal_information_external_link'.tr,
    },
    'common.false_rumors'.tr: {19: 'common.political_rumors'.tr, 22: 'common.false_untrue_information'.tr, 20: 'common.social_event_rumors'.tr},
    'common.infringing_on_personal_rights'.tr: {7: 'report.member.personal_attack'.tr, 15: 'common.privacy_violation'.tr},
    'common.harmful_to_community_environment'.tr: {
      1: 'report.spam_ads'.tr,
      4: 'common.flame_baiting'.tr,
      5: 'common.spoiler'.tr,
      3: 'common.spamming'.tr,
      8: 'common.video_irrelevant'.tr,
      18: 'common.illegal_lucky_draw'.tr,
      17: 'common.bad_information_for_teenagers'.tr,
    },
    'common.others'.tr: {0: 'net.conn.other'.tr},
  };
  static bool withContentReply(int? reasonType) => reasonType != null;
  static bool contentRequiredReply(int? reasonType) =>
      reasonType == 0 || reasonType == 22;

  static Map<String, Map<int, String>> get dynamicReport => {
    '': {
      4: 'report.spam_ads'.tr,
      8: 'common.flame_baiting'.tr,
      1: 'common.pornography'.tr,
      5: 'report.member.personal_attack'.tr,
      3: 'common.illegal_information'.tr,
      9: 'common.political_rumors'.tr,
      10: 'common.social_event_rumors'.tr,
      12: 'common.false_untrue_information'.tr,
      13: 'common.illegal_information_external_link'.tr,
      0: 'net.conn.other'.tr,
    },
  };

  static Map<String, Map<int, String>> get danmakuReport => {
    '': {
      1: 'common.illegal_prohibited'.tr,
      2: 'report.member.porn'.tr,
      3: 'report.member.gambling'.tr,
      4: 'report.member.personal_attack'.tr,
      5: 'common.privacy_violation'.tr,
      6: 'report.spam_ads'.tr,
      7: 'common.flame_baiting'.tr,
      8: 'common.spoiler'.tr,
      9: 'common.malicious_spamming'.tr,
      10: 'common.video_irrelevant_1'.tr,
      12: 'common.bad_information_for_teenagers'.tr,
      13: 'common.illegal_information_external_link'.tr,
      0: 'common.others_1'.tr, // 11
    },
  };
  static bool danmakuReportCheck(int? reasonType) => reasonType == 11;

  static Map<String, Map<int, String>> get liveDanmakuReport => {
    '': {
      1: 'common.illegal_non_compliant'.tr,
      2: 'common.vulgar_pornography'.tr,
      3: 'report.spam_ads'.tr,
      4: 'common.abuse_flame_baiting'.tr,
      5: 'common.politically_sensitive'.tr,
      6: 'common.bad_information_for_teenagers'.tr,
      7: 'net.conn.other'.tr, // avoid show form
    },
  };
  static bool liveDanmakuReportCheck(int? _) => false;

  static Map<String, Map<int, String>> get imMsgReport => {
    '': {
      1: 'report.member.porn'.tr,
      2: 'common.politically_sensitive'.tr,
      3: 'common.illegal_and_harmful'.tr,
      4: 'common.advertising_harassment'.tr,
      5: 'report.member.personal_attack'.tr,
      6: 'common.fraud'.tr,
      0: 'common.other_issues'.tr,
    },
  };
}
