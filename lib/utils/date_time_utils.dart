import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

const String kFormatUTC = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

///
///
///
class DateTimeUtils {
  DateTimeUtils._();

  static DateTime? revertToUTC(String datetime) {
    try {
      return DateFormat(kFormatUTC).parse(datetime, true);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
