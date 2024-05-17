import 'package:flutter/material.dart';

TextStyle getGreenBold18(double screenWidth) {
  // 根據屏幕寬度計算文字大小
  double firsttextsize = 18.0;
  double scaledfirstTextSize = firsttextsize * screenWidth / 500.0; // 這是一個示例，您可以根據具體情況調整比例

  // 返回文字樣式
  return TextStyle(
    color: Color(0xFF00B47E),
    fontSize: scaledfirstTextSize,
    fontWeight: FontWeight.bold,
  );
}

TextStyle getGreenBold16(double screenWidth) {
  // 根據屏幕寬度計算文字大小
  double firsttextsize = 16.0;
  double scaledfirstTextSize = firsttextsize * screenWidth / 500.0; // 這是一個示例，您可以根據具體情況調整比例

  // 返回文字樣式
  return TextStyle(
    color: Color(0xFF00B47E),
    fontSize: scaledfirstTextSize,
    fontWeight: FontWeight.bold,
  );
}

TextStyle getGreenBold14(double screenWidth) {
  // 根據屏幕寬度計算文字大小
  double firsttextsize = 14.0;
  double scaledfirstTextSize = firsttextsize * screenWidth / 500.0; // 這是一個示例，您可以根據具體情況調整比例

  // 返回文字樣式
  return TextStyle(
    color: Color(0xFF00B47E),
    fontSize: scaledfirstTextSize,
    fontWeight: FontWeight.bold,
  );
}