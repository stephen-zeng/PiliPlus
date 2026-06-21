import 'dart:async';

import 'package:PiliPlus/common/assets.dart';
import 'package:PiliPlus/models_new/video/video_detail/data.dart';
import 'package:PiliPlus/models_new/video/video_detail/episode.dart';
import 'package:PiliPlus/models_new/video/video_detail/section.dart';
import 'package:PiliPlus/pages/video/controller.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/controller.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'general.;//todorefaclassseasonpanelext'.tr合集：${videoDetail.ugcSeason!.title!}',
                    style: theme.textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 15),
                Image.asset(
                  Assets.livingStatic,
                  color: theme.colorScheme.primary,
                  height: 12,
                  cacheHeight: 12.cacheSize(context),
                  semanticLabel: "正在播放：",
                ),
                const SizedBox(width: 10),
                Obx(
                  () => Text(
                    '${currentIndex.value + 1}/${episodes.length}',
                    style: theme.textTheme.labelMedium,
                    semanticsLabel:
                        '第${currentIndex.value + 1}集，共${episodes.length}集',
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 13,
                  semanticLabel: '查看',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _findEpisode() {
    final List<SectionItem> sections = videoDetail.ugcSeason!.sections!;
    for (int i = 0; i < sections.length; i++) {
      final List<EpisodeItem> episodesList = sections[i].episodes!;
      for (int j = 0; j < episodesList.length; j++) {
        if (episodesList[j].cid == _videoDetailController.seasonCid) {
          if (_videoDetailController.seasonIndex.value != i) {
            _videoDetailController.seasonIndex.value = i;
          }
          episodes = episodesList;
          break;
        }
      }
    }
  }
}
