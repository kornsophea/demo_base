import 'package:flutter/material.dart';
import 'package:getx_base/Constants/app_color.dart';
import 'package:intl/intl.dart';

extension Any on String {
  // ignore: unused_element
  bool toBoolean() {
    if (toLowerCase() == "true" || toLowerCase() == "1") {
      return true;
    } else if (toLowerCase() == "false" || toLowerCase() == "0") {
      return false;
    } else {
      return false;
    }
  }

  String encodeComponent() {
    return Uri.encodeComponent(this);
  }

  Color toColor() {
    try {
      Color? color = Color(
        int.parse(substring(1, 7), radix: 16) + 0xFF000000,
      );
      return color;
    } catch (error) {
      return AppColors.primaryColor;
    }
  }

  String toDate({String format = 'dd/MM/yyyy'}) {
    final dateTime = DateTime.parse(toString());
    final date = DateFormat(format).format(dateTime);
    return date;
  }

  String toDay({String format = 'EEEE'}) {
    final dateTime = DateTime.parse(toString());
    final date = DateFormat(format).format(dateTime);
    return date;
  }

  String trimThreeCharactor() {
    if (characters.length > 3) {
      final trimmedStr = substring(0, 3);
      return trimmedStr;
    }
    return this;
  }

  bool isUnauthenticated() {
    if (toLowerCase().contains("unauthenticated")) {
      return true;
    } else if (toLowerCase().contains("unauthenticated.")) {
      return true;
    } else if (toLowerCase().contains("Unauthenticated.")) {
      return true;
    } else if (toLowerCase().contains("unauthorized")) {
      return true;
    }
    return false;
  }

  String replaceChar(String from, String to) {
    return replaceAll(from, to);
  }
}
