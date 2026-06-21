import 'package:PiliPlus/common/style.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models_new/space/space_fav/list.dart';
import 'package:PiliPlus/pages/subscription_detail/view.dart';
import 'package:PiliPlus/utils/bili_utils.dart';
import 'package:PiliPlus/utils/num_utils.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberFavItem extends StatelessWidget {
  const MemberFavItem({super.key, required this.item, this.onDelete});

  final SpaceFavItemModel item;
  final ValueChanged<bool?>? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    void onLongPress() => imageSaveDialog(
      title: item.title,
      cover: item.cover,
    );
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () async {
          if (item.state == 1) {
            // invalid
            return;
          }

          if (item.type == 0 || item.type == 11) {
            final isDeleted = await Get.toNamed(
              '/favDetail',
              parameters: {
                'mediaId': item.id.toString(),
                'heroTag': Utils.makeHeroTag(item.id),
              },
            );
            onDelete?.call(isDeleted);
          } else {
            SubDetailPage.toSubDetailPage(
              item.id!,
              subInfo: item,
            );
          }
        },
        onLongPress: onLongPress,
        onSecondaryTap: PlatformUtils.isMobile ? null : onLongPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Style.safeSpace,
            vertical: 5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  AspectRatio(
                    aspectRatio: Style.aspectRatio,
                    child: LayoutBuilder(
                      builder: (context, constraints) => NetworkImgLayer(
                        src: item.cover,
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                      ),
                    ),
                  ),
                  if (item.type == 21)
                    PBadge(
                      right: 6,
                      top: 6,
                      text: 'enum.episode.season'.tr,
                    )
                  else if (item.type == 11)
                    PBadge(
                      right: 6,
                      top: 6,
                      text: 'member.collections'.tr,
                    ),
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Text(
                      item.type == 0
                          ? 'member_favorite.content_1'.trParams({'var0': (item.mediaCount).toString(), 'var1': (BiliUtils.isPublicFavText(item.attr)).toString()})
                          : item.type == 11
                          ? 'member_favorite.content_1'.trParams({'var0': (item.mediaCount).toString(), 'var1': (item.upper?.name).toString()})
                          : item.type == 21
                          ? 'member_favorite.created_by_n_videos_played'.trParams({'var0': (item.upper?.name).toString(), 'var1': (item.mediaCount).toString(), 'var2': (NumUtils.numFormat(item.viewCount)).toString()})
                          : 'common.content'.trParams({'var0': (item.mediaCount).toString()}),
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
