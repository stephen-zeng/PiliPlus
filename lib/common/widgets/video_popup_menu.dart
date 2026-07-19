import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/common/account_type.dart';
import 'package:PiliPlus/models/home/rcmd/result.dart';
import 'package:PiliPlus/models/model_video.dart';
import 'package:PiliPlus/models_new/space/space_archive/item.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/pages/search/widgets/search_text.dart';
import 'package:PiliPlus/pages/video/ai_conclusion/view.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/controller.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class _VideoCustomAction {
  final String title;
  final Widget icon;
  final VoidCallback onTap;
  const _VideoCustomAction(this.title, this.icon, this.onTap);
}

class VideoPopupMenu extends StatelessWidget {
  final double? iconSize;
  final double menuItemHeight;
  final BaseSimpleVideoItemModel videoItem;
  final VoidCallback? onRemove;

  const VideoPopupMenu({
    super.key,
    required this.iconSize,
    required this.videoItem,
    this.onRemove,
    this.menuItemHeight = 45,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      icon: Icon(
        Icons.more_vert_outlined,
        color: Theme.of(context).colorScheme.outline,
        size: iconSize,
      ),
      position: PopupMenuPosition.under,
      itemBuilder: (context) =>
          [
                if (videoItem.bvid?.isNotEmpty == true) ...[
                  _VideoCustomAction(
                    videoItem.bvid!,
                    const Icon(CustomIcons.identifier_circle, size: 16),
                    () => Utils.copyText(videoItem.bvid!),
                  ),
                  _VideoCustomAction(
                    'video_menu.watch_later'.tr,
                    const Icon(MdiIcons.clockTimeEightOutline, size: 16),
                    () => UserHttp.toViewLater(bvid: videoItem.bvid),
                  ),
                  if (videoItem.cid != null && Pref.enableAi)
                    _VideoCustomAction(
                      'video_menu.ai_summary'.tr,
                      const Icon(CustomIcons.ai_circle, size: 16),
                      () async {
                        final res = await UgcIntroController.getAiConclusion(
                          videoItem.bvid!,
                          videoItem.cid!,
                          videoItem.owner.mid,
                        );
                        if (res != null && context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: Padding(
                                padding: const .symmetric(vertical: 14),
                                child: AiConclusionPanel.buildContent(
                                  context,
                                  Theme.of(context),
                                  res,
                                  tap: false,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                ],
                if (videoItem is! SpaceArchiveItem) ...[
                  _VideoCustomAction(
                    'video_menu.visit_up'.trParams({
                      'name': '${videoItem.owner.name}',
                    }),
                    const Icon(MdiIcons.accountCircleOutline, size: 16),
                    () => Get.toNamed('/member?mid=${videoItem.owner.mid}'),
                  ),
                  _VideoCustomAction(
                    'video_menu.not_interested'.tr,
                    const Icon(MdiIcons.thumbDownOutline, size: 16),
                    () {
                      String? accessKey = Accounts.get(
                        AccountType.recommend,
                      ).accessKey;
                      if (accessKey == null || accessKey == "") {
                        SmartDialog.showToast('video_menu.re_login'.tr);
                        return;
                      }
                      if (videoItem case final RcmdVideoItemAppModel item) {
                        ThreePoint? tp = item.threePoint;
                        if (tp == null) {
                          SmartDialog.showToast(
                            'common.failed_to_get_threepoint'.tr,
                          );
                          return;
                        }
                        if (tp.dislikeReasons == null && tp.feedbacks == null) {
                          SmartDialog.showToast(
                            'common.failed_to_get_dislikereasons_or'.tr,
                          );
                          return;
                        }
                        Widget actionButton(Reason? r, Reason? f) {
                          return SearchText(
                            text: r?.name ?? f?.name ?? 'common.unknown'.tr,
                            onTap: (_) async {
                              Get.back();
                              SmartDialog.showLoading(
                                msg: 'video_menu.submitting'.tr,
                              );
                              final res = await VideoHttp.feedDislike(
                                reasonId: r?.id,
                                feedbackId: f?.id,
                                id: item.param!,
                                goto: item.goto!,
                              );
                              SmartDialog.dismiss();
                              if (res.isSuccess) {
                                SmartDialog.showToast(
                                  r?.toast ?? f!.toast!,
                                );
                                onRemove?.call();
                              } else {
                                res.toast();
                              }
                            },
                          );
                        }

                        showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              contentPadding: const .fromLTRB(24, 16, 24, 24),
                              children: [
                                if (tp.dislikeReasons != null) ...[
                                  Text('video_menu.dislike_dialog_title'.tr),
                                  const SizedBox(height: 5),
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: tp.dislikeReasons!
                                        .map((item) => actionButton(item, null))
                                        .toList(),
                                  ),
                                ],
                                if (tp.feedbacks != null) ...[
                                  const SizedBox(height: 5),
                                  Text('video_menu.feedback'.tr),
                                  const SizedBox(height: 5),
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: tp.feedbacks!
                                        .map((item) => actionButton(null, item))
                                        .toList(),
                                  ),
                                ],
                                const Divider(),
                                Center(
                                  child: FilledButton.tonal(
                                    onPressed: () async {
                                      SmartDialog.showLoading(
                                        msg: 'video_menu.submitting'.tr,
                                      );
                                      final res =
                                          await VideoHttp.feedDislikeCancel(
                                            id: item.param!,
                                            goto: item.goto!,
                                          );
                                      SmartDialog.dismiss();
                                      SmartDialog.showToast(
                                        res.isSuccess
                                            ? 'common.success'.tr
                                            : res.toString(),
                                      );
                                      Get.back();
                                    },
                                    style: FilledButton.styleFrom(
                                      visualDensity: VisualDensity.compact,
                                    ),
                                    child: Text('video_menu.undo'.tr),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            contentPadding: const .all(24),
                            children: [
                              Center(
                                child: Text('video_menu.web_no_detail'.tr),
                              ),
                              const SizedBox(height: 5),
                              Wrap(
                                spacing: 5.0,
                                runSpacing: 2.0,
                                alignment: .center,
                                children: [
                                  FilledButton.tonal(
                                    onPressed: () async {
                                      Get.back();
                                      SmartDialog.showLoading(
                                        msg: 'video_menu.submitting'.tr,
                                      );
                                      final res = await VideoHttp.dislikeVideo(
                                        bvid: videoItem.bvid!,
                                        type: true,
                                      );
                                      SmartDialog.dismiss();
                                      if (res.isSuccess) {
                                        SmartDialog.showToast(
                                          'video_menu.dislike_success'.tr,
                                        );
                                        onRemove?.call();
                                      } else {
                                        res.toast();
                                      }
                                    },
                                    style: FilledButton.styleFrom(
                                      visualDensity: .compact,
                                    ),
                                    child: Text('video_menu.dislike'.tr),
                                  ),
                                  FilledButton.tonal(
                                    onPressed: () async {
                                      Get.back();
                                      SmartDialog.showLoading(
                                        msg: 'video_menu.submitting'.tr,
                                      );
                                      final res = await VideoHttp.dislikeVideo(
                                        bvid: videoItem.bvid!,
                                        type: false,
                                      );
                                      SmartDialog.dismiss();
                                      SmartDialog.showToast(
                                        res.isSuccess
                                            ? 'video_menu.cancel_dislike'.tr
                                            : res.toString(),
                                      );
                                    },
                                    style: FilledButton.styleFrom(
                                      visualDensity: .compact,
                                    ),
                                    child: Text('video_menu.undo'.tr),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                  _VideoCustomAction(
                    'video_menu.block_up'.trParams({
                      'name': '${videoItem.owner.name}',
                    }),
                    const Icon(MdiIcons.cancel, size: 16),
                    () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('common.tip'.tr),
                          content: Text(
                            'video_menu.block_confirm'.trParams({
                              'name': '${videoItem.owner.name}',
                              'mid': '${videoItem.owner.mid}',
                            }),
                          ),
                          actions: [
                            TextButton(
                              onPressed: Get.back,
                              child: Text(
                                'video_menu.misclick'.tr,
                                style: TextStyle(
                                  color: ColorScheme.of(context).outline,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                Get.back();
                                final res = await VideoHttp.relationMod(
                                  mid: videoItem.owner.mid!,
                                  act: 5,
                                  reSrc: 11,
                                );
                                if (res.isSuccess) {
                                  onRemove?.call();
                                } else {
                                  res.toast();
                                }
                              },
                              child: Text('common.confirm'.tr),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
                _VideoCustomAction(
                  MineController.anonymity.value
                      ? 'video_menu.incognito_exit'.tr
                      : 'video_menu.incognito_enter'.tr,
                  MineController.anonymity.value
                      ? const Icon(MdiIcons.incognitoOff, size: 16)
                      : const Icon(MdiIcons.incognito, size: 16),
                  MineController.onChangeAnonymity,
                ),
              ]
              .map(
                (e) => PopupMenuItem(
                  height: menuItemHeight,
                  onTap: e.onTap,
                  child: Row(
                    children: [
                      e.icon,
                      const SizedBox(width: 6),
                      Text(e.title, style: const TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              )
              .toList(),
    );
  }
}
