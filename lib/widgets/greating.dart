import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/my_text_style.dart';
import 'package:portfolio/utils/responsive.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour <= 11) {
    return 'Good Morning!';
  } else if ((hour >= 12) && (hour <= 17)) {
    return 'Good Afternoon!';
  } else if ((hour >= 17) && (hour <= 23)) {
    return 'Good Evening!';
  } else {
    return 'Good Night!';
  }
}

class Greeting extends StatelessWidget {
  final double fontSize;
  const Greeting({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          greeting(),
          style: MyTextStyle.ubuntuMedium(
              fontSize: fontSize, color: MyColors.white),
        ),
        SizedBox(
            height: fontSize + Responsive.width(context, width:  0.01) ,
            width: fontSize + Responsive.width(context, width: 0.02),
            child: Lottie.asset('assets/jsons/hi.json')),
      ],
    );
  }
}
