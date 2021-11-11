import 'package:sprintf/sprintf.dart';

class Formatting {
    static String getFormattedDateAndTime({required DateTime dateTime}) {
    return getFormattedDateShort(dateTime: dateTime) +
        '  —  ' +
        getFormattedTime(dateTime);
  }

    static String getFormattedTime(DateTime dateTime) {
    return sprintf('%02i:%02i', [
      dateTime.hour,
      dateTime.minute,
    ]);
  }

  static String getFormattedDateShort({required DateTime dateTime}) {
    return sprintf('%s, %02i.%02i.%4i', [
      getWeekdayName(
        weekdayNumber: dateTime.weekday,
        isShortened: false,
      ),
      dateTime.day,
      dateTime.month,
      dateTime.year,
    ]);
  }

    static String getWeekdayName(
      {required int weekdayNumber, required bool isShortened}) {
    if (weekdayNumber < 1 || weekdayNumber > 7) {
      return '';
    }
    if (weekdayNumber == 1) {
      if (isShortened) {
        return 'Mon';
      } else {
        return 'Monday';
      }
    } else if (weekdayNumber == 2) {
      if (isShortened) {
        return 'Tue';
      } else {
        return 'Tuesday';
      }
    } else if (weekdayNumber == 3) {
      if (isShortened) {
        return 'Wed';
      } else {
        return 'Wednesday';
      }
    } else if (weekdayNumber == 4) {
      if (isShortened) {
        return 'Thu';
      } else {
        return 'Thursday';
      }
    } else if (weekdayNumber == 5) {
      if (isShortened) {
        return 'Fri';
      } else {
        return 'Friday';
      }
    } else if (weekdayNumber == 6) {
      if (isShortened) {
        return 'Sat';
      } else {
        return 'Saturday';
      }
    } else {
      if (isShortened) {
        return 'Sun';
      } else {
        return 'Sunday';
      }
    }
  }

}