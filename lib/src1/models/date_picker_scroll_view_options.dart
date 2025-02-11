import 'package:flutter/material.dart';

class DatePickerScrollViewOptions {
  const DatePickerScrollViewOptions({
    this.year = const ScrollViewDetailOptions(margin: EdgeInsets.all(4)),
    this.month = const ScrollViewDetailOptions(margin: EdgeInsets.all(4)),
    this.day = const ScrollViewDetailOptions(margin: EdgeInsets.all(4)),
  });

  final ScrollViewDetailOptions year;
  final ScrollViewDetailOptions month;
  final ScrollViewDetailOptions day;

  // Applies the given [ScrollViewDetailOptions] to all three options ie. year, month and day.
  static DatePickerScrollViewOptions all(ScrollViewDetailOptions value) {
    return DatePickerScrollViewOptions(
      year: value,
      month: value,
      day: value,
    );
  }
}

class ScrollViewDetailOptions {
  const ScrollViewDetailOptions({
    this.label = '',
    this.alignment = Alignment.centerLeft,
    this.margin,
    this.selectedTextStyle =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF000000)),
    this.textStyle =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF000000)),
  });

  /// The text printed next to the year, month, and day.
  final String label;

  /// The year, month, and day text alignment method.
  final Alignment alignment;

  /// The amount of space that can be added to the year, month, and day.
  final EdgeInsets? margin;

  /// An immutable style describing how to format and paint text.
  final TextStyle textStyle;

  /// An invariant style that specifies the selected text format and explains how to draw it.
  final TextStyle selectedTextStyle;
}
