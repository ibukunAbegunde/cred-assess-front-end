import 'package:cred_assess/assets/style.dart';
import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class screenTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const screenTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(title,
            style: CustomTextStyle(
              color: CustomColors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
        ),
        Text(subTitle,
          style: CustomTextStyle(
            color: CustomColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
      ]

    );
  }
}
