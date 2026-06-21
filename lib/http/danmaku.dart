import 'package:PiliPlus/http/api.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/danmaku/post.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:dio/dio.dart'general.;abstractfinalclassdanmakuhttp'.trtype': type,
      'oid': oid,
      'msg': msg,
      'mode': mode,
      //'aid': aid,
      'bvid': bvid,
      'progress': ?progress,
      'color': ?colorful ? 16777215 : color,
      'fontsize': ?fontSize,
      'pool': ?pool,
      'rnd': DateTime.now().microsecondsSinceEpoch,
      'colorful': ?colorful ? 60001 : null,
      'checkbox_type': ?checkboxType,
      'csrf': Accounts.main.csrf,
      // 'access_key': access_key,
    };

    final res = await Request().post(
      Api.shootDanmaku,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    if (res.data['code'] == 0) {
      return Success(DanmakuPost.fromJson(res.data['data']));
    } else {
      return Error(res.data['message'], code: res.data['code']);
    }
  }

  static Future<LoadingState<void>> danmakuLike({
    required bool isLike,
    required int cid,
    required int id,
  }) async {
    final data = {
      'op': isLike ? 1 : 2,
      'dmid': id,
      'oid': cid,
      'platform': 'web_player',
      'polaris_app_id': 100,
      'polaris_platform': 5,
      'spmid': '333.788.0.0',
      'from_spmid': '333.788.0.0',
      'statistics': '{"appId":100,"platform":5,"abtest":"","version":""}',
      'csrf': Accounts.main.csrf,
    };
    final res = await Request().post(
      Api.danmakuLike,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    if (res.data['code'] == 0) {
      return const Success(null);
    } else {
      return Error(res.data['message'], code: res.data['code']);
    }
  }

  static Future<LoadingState<void>> danmakuReport({
    required int reason,
    required int cid,
    required int id,
    bool block = false,
    String? content,
  }) async {
    final data = {
      'cid': cid,
      'dmid': id,
      'reason': reason,
      'block': block,
      'originCid': cid,
      'content': ?content,
      'polaris_app_id': 100,
      'polaris_platform': 5,
      'spmid': '333.788.0.0',
      'from_spmid': '333.788.0.0',
      'statistics': '{"appId":100,"platform":5,"abtest":"","version":""}',
      'csrf': Accounts.main.csrf,
    };
    final res = await Request().post(
      Api.danmakuReport,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    if (res.data['code'] == 0) {
      return const Success(null);
    } else {
      return Error(res.data['message']);
    }

    /// res.data['data']['block']
    /// {
    ///       0: "举报已提交",
    ///       "-1": "举报失败，请先激活账号。",
    ///       "-2": "举报失败，系统拒绝受理您的举报请求。",
    ///       "-3": "举报失败，您已经被禁言。",
    ///       "-4": "您的操作过于频繁，请稍后再试。",
    ///       "-5": "您已经举报过这条弹幕了。",
    ///       "-6": "举报失败，系统错误。"
    /// }
  }

  static Future<LoadingState<String?>> danmakuRecall({
    required int cid,
    required int id,
  }) async {
    final data = {
      'dmid': id,
      'cid': cid,
      'type': 1,
      'csrf': Accounts.main.csrf,
    };
    final res = await Request().post(
      Api.danmakuRecall,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    if (res.data['code'] == 0) {
      return Success(res.data['message']);
    } else {
      return Error(res.data['message']);
    }
  }

  static Future<LoadingState<String?>> danmakuEditState({
    required int oid,
    required Iterable<int> ids,
    required int state,
  }) async {
    /// 0: 取消删除
    /// 1：删除弹幕
    /// 2：弹幕保护
    /// 3：取消保护
    final data = {
      'dmids': ids.join(','),
      'oid': oid,
      'state': state,
      'type': 1,
      'csrf': Accounts.main.csrf,
    };
    final res = await Request().post(
      Api.danmakuRecall,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    if (res.data['code'] == 0) {
      return Success(res.data['message']);
    } else {
      return Error(res.data['message']);
    }
  }
}
