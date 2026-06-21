import 'package:get/get.dart';
import 'package:intl/intl.dart' show DateFormat;

abstract final class DateFormatUtils {
  static final shortFormat = DateFormat('MM-dd');
  static final longFormat = DateFormat('yyyy-MM-dd');
  static final _shortFormatD = DateFormat('MM-dd HH:mm');
  static final longFormatD = DateFormat('yyyy-MM-dd HH:mm');
  static final longFormatDs = DateFormat('yyyy-MM-dd HH:mm:ss');

  static String dateFormat(
    int? time, {
    DateFormat? short,
    DateFormat? long,
  }) {
    if (time == null || time == 0) {
      return '';
    }

    final now = DateTime.now();
    final date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    final diff = now.difference(date);

    final diffInMins = diff.inMinutes;
    if (diffInMins < 1) return 'general.just_now'.tr;
    if (diffInMins < 60) return 'general.minutes_ago'.trParams({'var0': (diffInMins).toString()});

    final diffInHours = diff.inHours;
    if (diffInHours < 24) return 'general.hours_ago'.trParams({'var0': (diffInHours).toString()});

    final today = DateTime(now.year, now.month, now.day);
    final dateDay = DateTime(date.year, date.month, date.day);
    final dayDiff = today.difference(dateDay).inDays;
    if (dayDiff == 1) {
      return 'general.yesterday'.trParams({'var0': (_twoDigits(date.hour)).toString(), 'var1': (_twoDigits(date.minute)).toString()});
    }
    if (dayDiff < 4) {
      return 'general.days_ago'.trParams({'var0': (dayDiff).toString()});
    }
    final DateFormat sdf = now.year == date.year
        ? short ?? shortFormat
        : long ?? longFormat;
    return sdf.format(date);
  }

  static String _twoDigits(int n) => n.toString().padLeft(2, '0');

  static String chatFormat(int? time, {bool isHistory = false}) {
    if (time == null || time == 0) {
      return '';
    }

    final now = DateTime.now();
    final date = DateTime.fromMillisecondsSinceEpoch(time * 1000);

    final today = DateTime(now.year, now.month, now.day);
    final dateDay = DateTime(date.year, date.month, date.day);
    if (today == dateDay) {
      return '${isHistory ? '今天 ' : ''}${_twoDigits(date.hour)}:${_twoDigits(date.minute)}';
    }
    final isYesterday = today.subtract(const Duration(days: 1)) == dateDay;
    if (isYesterday) {
      return 'general.yesterday'.trParams({'var0': (_twoDigits(date.hour)).toString(), 'var1': (_twoDigits(date.minute)).toString()});
    }
    if (isHistory) {
      final DateFormat sdf = now.year == date.year
          ? _shortFormatD
          : longFormatD;
      return sdf.format(date);
    }
    return longFormatD.format(date);
  }

  static String format(int? time, {DateFormat? format}) {
    if (time == null || time == 0) {
      return '';
    }
    final date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    return (format ?? longFormatD).format(date);
  }
}
