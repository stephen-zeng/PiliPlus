import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/common/later_view_type.dart';
import 'package:PiliPlus/models/common/video/source_type.dart';
import 'package:PiliPlus/models_new/later/data.dart';
import 'package:PiliPlus/models_new/later/list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart'
    show CommonListController;
import 'package:PiliPlus/pages/common/multi_select/base.dart';
import 'package:PiliPlus/pages/common/multi_select/multi_select_controller.dart';
import 'package:PiliPlus/pages/later/base_controller.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/extension/scroll_controller_ext.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

mixin BaseLaterController
    on
        CommonListController<LaterData, LaterItemModel>,
        CommonMultiSelectMixin<LaterItemModel>,
        DeleteItemMixin<LaterData, LaterItemModel> {
  ValueChanged<int>? updateCount;

  @override
  void onRemove() {
    showConfirmDialog(
      context: Get.context!,
      title: Text('later.tips'.tr),
      content: Text('later.are_you_sure_to_delete_selected_watch_later'.tr),
      onConfirm: () async {
        final removeList = allChecked.toSet();
        SmartDialog.showLoading(msg: 'history.requesting'.tr);
        final res = await UserHttp.toViewDel(
          aids: removeList.map((item) => item.aid).join(','),
        );
        if (res.isSuccess) {
          updateCount?.call(removeList.length);
          afterDelete(removeList);
        }
        SmartDialog.dismiss();
      },
    );
  }

  // single
  void toViewDel(
    BuildContext context,
    int index,
    int? aid,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('later.tips'.tr),
        content: Text('video.coming_removal'.tr),
        actions: [
          TextButton(
            onPressed: Get.back,
            child: Text(
              'common.cancel'.tr,
              style: TextStyle(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () async {
              Get.back();
              final res = await UserHttp.toViewDel(aids: aid.toString());
              if (res.isSuccess) {
                loadingState
                  ..value.data!.removeAt(index)
                  ..refresh();
                updateCount?.call(1);
              }
            },
            child: Text('later.confirm_removal'.tr),
          ),
        ],
      ),
    );
  }
}

class LaterController extends MultiSelectController<LaterData, LaterItemModel>
    with BaseLaterController {
  LaterController(this.laterViewType);
  final LaterViewType laterViewType;

  late final mid = Accounts.main.mid;

  final RxBool asc = false.obs;

  final LaterBaseController baseCtr = Get.put(LaterBaseController());

  @override
  RxBool get enableMultiSelect => baseCtr.enableMultiSelect;

  @override
  RxInt get rxCount => baseCtr.checkedCount;

  @override
  Future<LoadingState<LaterData>> customGetData() => UserHttp.seeYouLater(
    page: page,
    viewed: laterViewType.type,
    asc: asc.value,
  );

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List<LaterItemModel>? getDataList(response) {
    baseCtr.counts[laterViewType.index] = response.count ?? 0;
    return response.list;
  }

  @override
  void checkIsEnd(int length) {
    if (length >= baseCtr.counts[laterViewType.index]) {
      isEnd = true;
    }
  }

  // 一键清空
  void toViewClear(BuildContext context, [int? cleanType]) {
    String content = switch (cleanType) {
      1 => 'later.are_you_sure_to_clear_invalid_videos'.tr,
      2 => 'later.are_you_sure_to_clear_watched_videos'.tr,
      _ => 'later.are_you_sure_to_clear_the_watch_later_list'.tr,
    };
    showConfirmDialog(
      context: context,
      title: Text('common.confirm'.tr),
      content: Text(content),
      onConfirm: () async {
        final res = await UserHttp.toViewClear(cleanType);
        if (res.isSuccess) {
          onReload();
          final restTypes = List<LaterViewType>.from(LaterViewType.values)
            ..remove(laterViewType);
          for (final item in restTypes) {
            try {
              Get.find<LaterController>(tag: item.type.toString()).onReload();
            } catch (_) {}
          }
          SmartDialog.showToast('common.cleared'.tr);
        } else {
          res.toast();
        }
      },
    );
  }

  // 稍后再看播放全部
  void toViewPlayAll() {
    if (loadingState.value case Success(:final response)) {
      if (response == null || response.isEmpty) return;

      for (LaterItemModel item in response) {
        if (item.cid == null || item.pgcLabel?.isNotEmpty == true) {
          continue;
        } else {
          PageUtils.toVideoPage(
            bvid: item.bvid,
            cid: item.cid!,
            cover: item.pic,
            title: item.title,
            dimension: item.dimension,
            extraArguments: {
              'sourceType': SourceType.watchLater,
              'count': baseCtr.counts[LaterViewType.all.index],
              'favTitle': 'video_menu.watch_later'.tr,
              'mediaId': mid,
              'desc': asc.value,
            },
          );
          break;
        }
      }
    }
  }

  @override
  ValueChanged<int>? get updateCount =>
      (count) => baseCtr.counts[laterViewType.index] -= count;

  @override
  Future<void> onReload() {
    scrollController.jumpToTop();
    return super.onReload();
  }
}
