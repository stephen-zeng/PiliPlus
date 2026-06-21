import 'package:PiliPlus/http/loading_state.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models_new/coin_log/data.dart';
import 'package:PiliPlus/models_new/coin_log/list.dart';
import 'package:PiliPlus/pages/log_table/controller.dart';

class CoinLogController extends LogController<CoinLogData, CoinLogItem> {
  @override
  List<CoinLogItem>? getDataList(CoinLogData response) {
    return response.list;
  }

  @override
  Future<LoadingState<CoinLogData>> customGetData() => UserHttp.coinLog();

  @override
  List<(int, String)> getFlexAndText(CoinLogItem item) {
    return [(3, item.time), (1, item.delta), (4, item.reason)];
  }

  @override
  final CoinLogItem header = CoinLogItem(
    time: 'dyn.time'.tr,
    delta: 'common.change'.tr,
    reason: 'common.reason'.tr,
  );

  @override
  final String title = 'coin.coin_records'.tr;
}
