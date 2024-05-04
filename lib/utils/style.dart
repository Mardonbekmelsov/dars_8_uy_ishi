import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const headingStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);
  static dataStyle(bool isBlack) {
    return TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: isBlack ? Colors.black : Colors.white);
  }
}
