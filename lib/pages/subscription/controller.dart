import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models_new/sub/sub/data.dart';
import 'package:PiliPlus/models_new/sub/sub/list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class SubController extends CommonListController<SubData, SubItemModel> {
  late final account = Accounts.main;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<void> queryData([bool isRefresh = true]) {
    if (!account.isLogin) {
      loadingState.value = Error('video.account_not_logged_in'.tr);
      return Future.syncValue(null);
    }
    return super.queryData(isRefresh);
  }

  // 取消订阅
  void cancelSub(SubItemModel subFolderItem) {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: Text('dialog.info'.tr),
        content: Text('subscription.are_you_sure_to_unsubscribe'.tr),
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
              final res = await FavHttp.cancelSub(
                id: subFolderItem.id!,
                type: subFolderItem.type!,
              );
              if (res.isSuccess) {
                loadingState
                  ..value.data!.remove(subFolderItem)
                  ..refresh();
                SmartDialog.showToast('subscription.unsubscribed_successfully'.tr);
              } else {
                res.toast();
              }
              Get.back();
            },
            child: Text('dialog.confirm'.tr),
          ),
        ],
      ),
    );
  }

  @override
  List<SubItemModel>? getDataList(SubData response) {
    if (response.hasMore == false) {
      isEnd = true;
    }
    return response.list;
  }

  @override
  Future<LoadingState<SubData>> customGetData() => UserHttp.userSubFolder(
    pn: page,
    ps: 20,
    mid: account.mid,
  );
}
