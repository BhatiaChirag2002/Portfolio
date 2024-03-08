import 'package:flutter/material.dart';
import 'package:portfolio/constant/app_text.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/widgets/animated_text.dart';
import 'package:portfolio/widgets/greeting.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: desktop());
  }

  Widget mobile() {
    return Container(
      height: Responsive.height(context, height: 0.925),
      width: Responsive.width(context, width: 1),
      decoration: boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Responsive.width(context, width: 0.92),
            child: Greeting(
              fontSize: Responsive.width(context, width: 0.075),
            ),
          ),
          SizedBox(
            width: Responsive.width(context, width: 0.92),
            child: Text(
              'Hi there! My Name is \n${AppText.name} and',
              style: MyTextStyle.ubuntuMedium(
                  fontSize: Responsive.width(context, width: 0.075),
                  color: MyColors.white),
            ),
          ),
          SizedBox(
            width: Responsive.width(context, width: 0.92),
            child:
            AnimatedText(fontSize: Responsive.width(context, width: 0.065)),
          ),
        ],
      ),
    );
  }

  Widget desktop() {
    return Container(
      height: Responsive.isDesktop(context) ? 650 : 600,
      width: Responsive.width(context, width: 1),
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.75 : 0.95),
              child: Greeting(
                fontSize: Responsive.width(context,
                    width: Responsive.isDesktop(context) ? 0.037 : 0.047),
              ),
            ),
            SizedBox(
              width: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.75 : 0.95),
              child: Text(
                'Hi there! My Name is ${AppText.name} and',
                style: MyTextStyle.ubuntuMedium(
                    fontSize: Responsive.width(context,
                        width: Responsive.isDesktop(context) ? 0.037 : 0.047),
                    color: MyColors.white),
              ),
            ),
            SizedBox(
              width: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.75 : 0.95),
              child: AnimatedText(
                  fontSize: Responsive.width(context,
                      width: Responsive.isDesktop(context) ? 0.03 : 0.04)),
            ),
          ],
        ),
      ),
    );
  }
}

var boxDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/background/background.jpg'),
      filterQuality: FilterQuality.high,
      fit: BoxFit.cover,
      alignment: Alignment(0.2, 0.0),
    ));

