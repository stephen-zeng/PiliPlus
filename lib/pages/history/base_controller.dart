import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class HistoryBaseController extends GetxController {
  RxBool pauseStatus = false.obs;

  RxBool enableMultiSelect = false.obs;
  RxInt checkedCount = 0.obs;

  final account = Accounts.history;

  // 清空观看历史
  void onClearHistory(BuildContext context, VoidCallback onSuccess) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('dialog.info'.tr),
        content: Text('history.ah_do_you_want_to_1'.tr),
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
              SmartDialog.showLoading(msg: 'history.requesting'.tr);
              final res = await UserHttp.clearHistory(account: account);
              SmartDialog.dismiss();
              if (res.isSuccess) {
                SmartDialog.showToast('history.clear_viewing_history'.tr);
                onSuccess();
              } else {
                res.toast();
              }
            },
            child: Text('history.confirm_clearing'.tr),
          ),
        ],
      ),
    );
  }

  // 暂停观看历史
  void onPauseHistory(BuildContext context) {
    final pauseStatus = !this.pauseStatus.value;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('dialog.info'.tr),
        content: Text(pauseStatus ? 'history.ah_do_you_want_to'.tr : 'history.ah_do_you_want_to_2'.tr),
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
              SmartDialog.showLoading(msg: 'history.requesting'.tr);
              final res = await UserHttp.pauseHistory(
                pauseStatus,
                account: account,
              );
              SmartDialog.dismiss();
              if (res.isSuccess) {
                SmartDialog.showToast(pauseStatus ? 'history.pause_viewing_history'.tr : 'history.restore_viewing_history'.tr);
                this.pauseStatus.value = pauseStatus;
                GStorage.localCache.put(
                  LocalCacheKey.historyPause,
                  pauseStatus,
                );
              } else {
                res.toast();
              }
              Get.back();
            },
            child: Text(pauseStatus ? 'history.confirm_pause'.tr : 'history.confirm_recovery'.tr),
          ),
        ],
      ),
    );
  }
}
