import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle medium({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 14,
      fontWeight: FontWeight.bold,
      color: color 
    );
  }
}
