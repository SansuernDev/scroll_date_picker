import 'package:flutter/cupertino.dart';

const String en = 'en';
const String th = 'th';

extension LocaleExtension on Locale {
  List<String> get months {
    switch (languageCode) {
      case th:
        return thMonths;
      default:
        return enMonths;
    }
  }
}
const List<String> enMonths = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

const List<String> thMonths = [
  'มกราคม',
  'กุมภาพันธ์',
  'มีนาคม',
  'เมษายน',
  'พฤษภาคม',
  'มิถุนายน',
  'กรกฎาคม',
  'สิงหาคม',
  'กันยายน',
  'ตุลาคม',
  'พฤศจิกายน',
  'ธันวาคม',
];