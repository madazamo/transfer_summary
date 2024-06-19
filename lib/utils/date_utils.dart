import 'package:intl/intl.dart';

class DateUtils {
  static final DateFormat _dayFormat = DateFormat('dd/MM/dd');
  static final DateFormat _timeFormat = DateFormat('hh:ss');

  static String dayFormat(DateTime d) => _dayFormat.format(d);

  static String timeFormat(DateTime d) => _timeFormat.format(d);

  static DateTime getDateNow() => DateTime.now();
}
