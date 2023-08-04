import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextStyle extends TextStyle {
  CustomTextStyle({
    double? spacing,
    double? height,
    double fontSize = 16,
    String fontFamily = 'Quicksand',
    // FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w400,
    Color? color = CustomColors.black,
    bool underline = false,
  }) : super(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          // fontStyle: fontStyle,
          fontFamily: fontFamily,
          height: height,
          letterSpacing: spacing,
          decoration: !underline ? null : TextDecoration.underline,
        );
}
