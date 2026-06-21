import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/common/widgets/reorder_mixin.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class BarSetPage extends StatefulWidget {
  const BarSetPage({super.key});

  @override
  State<BarSetPage> createState() => _BarSetPageState();
}

class _BarSetPageState extends State<BarSetPage> with ReorderMixin {
  late final String key;
  late final String title;
  late final List<Pair<EnumWithLabel, bool>> list;

  @override
  void initState() {
    super.initState();
    final Map<String, dynamic> args = Get.arguments;
    key = args['key'];
    title = args['title'];
    final List? cache = GStorage.setting.get(key);
    list = (args['defaultBars'] as List<EnumWithLabel>)
        .map((e) => Pair(first: e, second: cache?.contains(e.index) ?? true))
        .toList();
    if (cache != null && cache.isNotEmpty) {
      final cacheIndex = {for (final (k, v) in cache.indexed) v: k};
      list.sort((a, b) {
        final indexA = cacheIndex[a.first.index] ?? cacheIndex.length;
        final indexB = cacheIndex[b.first.index] ?? cacheIndex.length;
        return indexA.compareTo(indexB);
      });
    }
  }

  void saveEdit() {
    GStorage.setting.put(
      key,
      list.where((e) => e.second).map((e) => e.first.index).toList(),
    );
    SmartDialog.showToast('setting.style.save_success_restart'.tr);
  }

  void onReset() {
    Get.back();
    GStorage.setting.delete(key);
    SmartDialog.showToast('setting.style.reset_success_restart'.tr);
  }

  void onReorderItem(int oldIndex, int newIndex) {
    list.insert(newIndex, list.removeAt(oldIndex));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('setting.style.bar_edit_title'.trParams({'title': title})),
        actions: [
          TextButton(onPressed: onReset, child: Text('common.reset'.tr)),
          TextButton(onPressed: saveEdit, child: Text('common.save'.tr)),
          const SizedBox(width: 12),
        ],
      ),
      body: ReorderableListView(
        onReorderItem: onReorderItem,
        proxyDecorator: proxyDecorator,
        footer: Padding(
          padding:
              MediaQuery.viewPaddingOf(context).copyWith(top: 0, left: 0) +
              const EdgeInsets.only(right: 34, top: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('setting.style.reorder_hint'.tr),
          ),
        ),
        children: list
            .map(
              (e) => CheckboxListTile(
                key: ValueKey(e.hashCode),
                value: e.second,
                onChanged: (bool? value) {
                  e.second = value!;
                  setState(() {});
                },
                title: Text(e.first.label),
                secondary: const Icon(Icons.drag_indicator_rounded),
              ),
            )
            .toList(),
      ),
    );
  }
}
