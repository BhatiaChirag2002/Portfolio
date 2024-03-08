import 'package:flutter/material.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/my_flutter_app_icons.dart';
import 'package:portfolio/utils/my_text_style.dart';
import 'package:portfolio/utils/responsive.dart';

class Logo extends StatelessWidget {

  final Function() onTap;

  const Logo({
    super.key,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Responsive.width(context, width: 0.015),
            ),
            Icon(
              MyFlutterApp.logo,
              color: MyColors.red,
              size: 25,
            ),
            SizedBox(
              width: Responsive.width(context, width: 0.009),
            ),
            Text(
              'Chirag Bhatia',
              style: MyTextStyle.varelaRound(
                  fontSize: 20, color: MyColors.white),
            )
          ],
        ),
      ),
    );
  }
}
