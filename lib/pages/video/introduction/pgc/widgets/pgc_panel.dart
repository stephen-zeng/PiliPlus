import 'dart:async';

import 'package:PiliPlus/common/assets.dart';
import 'package:PiliPlus/models_new/pgc/pgc_info_model/episode.dart';
import 'package:PiliPlus/models_new/pgc/pgc_info_model/new_ep.dart';
import 'package:PiliPlus/models_new/video/video_detail/episode.dart'
    hide EpisodeItem;
import 'package:PiliPlus/pages/video/controller.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:PiliPlus/utils/extension/theme_ext.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class PgcPanel extends StatefulWidget {
  PgcPanel({
    super.key,
    required this.pages,
    this.cid,
    required this.onChangeEpisode,
    required this.showEpisodes,
    required this.heroTag,
    this.newEp,
  });

  final List<EpisodeItem> pages;
  final int? cid;
  final ValueChanged<BaseEpisodeItem> onChangeEpisode;
  final Function showEpisodes;
  final String heroTag;
  final NewEp? newEp;

  @override
  State<PgcPanel> createState() => _PgcPanelState();
}

class _PgcPanelState extends State<PgcPanel> {
  late int currentIndex;
  late final ScrollController listViewScrollCtr;
  // 默认未开通
  late final bool vipStatus;
  late int cid;
  late final VideoDetailController videoDetailCtr;
  late final StreamSubscription<int> _listener;

  @override
  void initState() {
    super.initState();
    cid = widget.cid!;
    currentIndex = widget.pages.indexWhere((e) => e.cid == cid);
    listViewScrollCtr = ScrollController(
      initialScrollOffset: currentIndex * 150.0,
    );

    vipStatus = Pref.userInfoCache?.vipStatus != 1;

    videoDetailCtr = Get.find<VideoDetailController>(tag: widget.heroTag);

    _listener = videoDetailCtr.cid.listen((int p0) {
      cid = p0;
      currentIndex = widget.pages.indexWhere((EpisodeItem e) => e.cid == cid);
      if (!mounted) return;
      setState(() {});
      scrollToIndex();
    });
  }

  @override
  void dispose() {
    _listener.cancel();
    listViewScrollCtr.dispose();
    super.dispose();
  }

  void scrollToIndex() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      listViewScrollCtr.animateTo(
        (currentIndex * 150.0).clamp(
          listViewScrollCtr.position.minScrollExtent,
          listViewScrollCtr.position.maxScrollExtent,
        ),
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final currEpisode = widget.pages[currentIndex];
    final isPugv = currEpisode.from == 'pugv';
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('video.collection'.tr),
              Expanded(
                child: Text(
                  'video.playing'.trParams({'var0': currEpisode.longTitle ?? currEpisode.title.toString()}),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: theme.outline),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 34,
                child: TextButton(
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  ),
                  onPressed: () => widget.showEpisodes(
                    null,
                    null,
                    widget.pages,
                    videoDetailCtr.bvid,
                    videoDetailCtr.aid,
                    cid,
                  ),
                  child: Text(
                    widget.newEp?.desc?.contains('video.serialization'.tr) == true
                        ? (Utils.isStringNumeric(widget.newEp!.title!)
                            ? 'video.serializing_updated_to_episode'.trParams({'episode': widget.newEp!.title!})
                            : 'video.serializing_updated_to'.trParams({'title': widget.newEp!.title!}))
                        : widget.newEp?.desc ?? 'common.view_all'.tr,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
            key: PageStorageKey(_PgcPanelState),
            padding: EdgeInsets.zero,
            controller: listViewScrollCtr,
            scrollDirection: Axis.horizontal,
            itemCount: widget.pages.length,
            itemExtent: 150,
            itemBuilder: (BuildContext context, int index) =>
                _buildItem(theme, isPugv, index),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(ColorScheme theme, bool isPugv, int index) {
    final item = widget.pages[index];
    final hasLongTitle = item.longTitle?.isNotEmpty == true;
    final color = index == currentIndex ? theme.primary : theme.onSurface;
    return Container(
      width: 150,
      height: 60,
      margin: index != widget.pages.length - 1
          ? EdgeInsets.only(right: 10)
          : null,
      child: Material(
        color: theme.onInverseSurface,
        borderRadius: BorderRadius.all(Radius.circular(6)),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          onTap: () {
            if (item.badge == 'common.member'.tr && Accounts.mainEqVideo && vipStatus) {
              SmartDialog.showToast('video.need_vip'.tr);
            }
            widget.onChangeEpisode(item);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text.rich(
                        maxLines: hasLongTitle ? 1 : 2,
                        TextSpan(
                          children: [
                            if (index == currentIndex)
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 6),
                                  child: Image.asset(
                                    Assets.livingStatic,
                                    color: theme.primary,
                                    height: 12,
                                    cacheHeight: 12.cacheSize(context),
                                    semanticLabel: 'common.now_playing'.tr,
                                  ),
                                ),
                              ),
                            TextSpan(
                              text: item.title ?? 'video.chapter'.trParams({'var0': (index + 1).toString()}),
                              style: TextStyle(
                                fontSize: 13,
                                color: color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (item.badge?.isNotEmpty == true) ...[
                      SizedBox(width: 2),
                      if (item.badge == 'common.member'.tr)
                        Image.asset(
                          Assets.vipIcon,
                          height: 16,
                          cacheHeight: 16.cacheSize(context),
                          semanticLabel: 'enum.badge.vip'.tr,
                        )
                      else
                        Text(
                          item.badge!,
                          style: TextStyle(
                            fontSize: 11,
                            color: item.badge == 'common.limited_exemption'.tr
                                ? theme.freeColor
                                : (item.badge == 'common.preview'.tr
                                    ? theme.onSurfaceVariant
                                    : theme.primary),
                          ),
                        ),
                    ],
                  ],
                ),
                if (hasLongTitle)
                  Text(
                    isPugv ? item.title! : item.longTitle!,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: color,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
