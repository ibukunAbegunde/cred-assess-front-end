import 'package:flutter/material.dart';

class Logo extends Hero {
  final String? type;
  // final double? height;

  Logo({
    Key? key,
    this.type,
    double? height,
  }) : super(
          key: key,
          tag: 'logo',
          child: Image.asset(
            'images/Copy.png',
            height: height ?? 24,
          ),
        );
}
class Logos extends Hero {
  final String? type;
  // final double? height;

  Logos({
    Key? key,
    this.type,
    double? height,
  }) : super(
    key: key,
    tag: 'logo',
    child: Image.asset(
      'images/log.png',
      height: height ?? 24,
    ),
  );
}
