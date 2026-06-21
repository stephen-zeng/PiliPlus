import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/models_new/dynamic/dyn_topic_top/topic_item.dart';
import 'package:PiliPlus/utils/num_utils.dart';
import 'package:flutter/material.dart';

class DynTopicItem extends StatelessWidget {
  const DynTopicItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final TopicItem item;
  final ValueChanged<TopicItem> onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ListTile(
        dense: true,
        onTap: () => onTap(item),
        title: Text.rich(
          TextSpan(
            children: [
              const WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    CustomIcons.topic_tag,
                    size: 18,
                  ),
                ),
              ),
              TextSpan(
                text: item.name,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Text(
            'dynamics_topic.viewed_by_discussion_by'.trParams({'var0': (NumUtils.numFormat(item.view)).toString(), 'var1': (NumUtils.numFormat(item.discuss)).toString()}),
            style: TextStyle(color: Theme.of(context).colorScheme.outline),
          ),
        ),
      ),
    );
  }
}
