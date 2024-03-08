import 'package:flutter/material.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';

class Skills extends StatelessWidget {

  final String category;
  final String name;
  final double fontSize;
  const Skills(
      {super.key,
      required this.fontSize,
      required this.category,
      required this.name,});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Responsive.width(context, width: 0.004)),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: MyColors.white,
              radius: Responsive.width(context,
                width: 0.004,
              )),
          Text(
            ' $category: ',
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize,
                color: MyColors.white,
                fontWeight: FontWeight.w700),
          ),
          Text(
            name,
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize, color: MyColors.white),
          )
        ],
      ),
    );
  }
}

class SoftSkills extends StatelessWidget {

  final String name;
  final double fontSize;
  const SoftSkills(
      {super.key,
      required this.fontSize,
      required this.name,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Responsive.width(context, width: 0.004)),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: MyColors.white,
              radius: Responsive.width(context,
                width: 0.004,
              )),
          Text(
            ' $name',
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize, color: MyColors.white),
          )
        ],
      ),
    );
  }
}
