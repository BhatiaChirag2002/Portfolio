

import 'package:flutter/material.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/my_text_style.dart';

class ScreenNameTitle extends StatelessWidget {
  final double fontSize;
  final String textOne;
  final String textTwo;
  const ScreenNameTitle({
    super.key, required this.fontSize, required this.textOne, required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(text: '$textOne '),
              TextSpan(
                  text: textTwo,
                  style: TextStyle(
                    color: MyColors.red,
                  ))
            ],
            style: MyTextStyle.varelaRound(
                color: MyColors.white,
                fontSize: fontSize)));
  }
}