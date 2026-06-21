import 'package:get/get.dart';
import 'package:PiliPlus/utils/duration_utils.dart';
import 'package:PiliPlus/utils/num_utils.dart';

class UserInfo {
  final int viewCount;
  final double minutesSaved;
  final int segmentCount;

  const UserInfo({
    required this.viewCount,
    required this.minutesSaved,
    required this.segmentCount,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    viewCount: json['viewCount'],
    minutesSaved: (json['minutesSaved'] as num).toDouble(),
    segmentCount: json['segmentCount'],
  );

  @override
  String toString() {
    String minutes = DurationUtils.formatTimeDuration(
      Duration(minutes: minutesSaved.round()),
    );
    if (minutes.isEmpty) {
      minutes = 'general.0_minutes'.tr;
    }
    return ('general.you_submitted_the_fragmentn'.trParams({'var0': (NumUtils.formatPositiveDecimal(segmentCount)).toString()}) + 
        'general.you_saved_everyone_the_snippetn'.trParams({'var0': (NumUtils.formatPositiveDecimal(viewCount)).toString()}) + 
        'general.s_life'.trParams({'var0': (minutes).toString()}));
  }
}
