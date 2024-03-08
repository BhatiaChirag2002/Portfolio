import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/my_text_style.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/greating.dart';

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

  Widget desktop() {
    return Container(
      height: Responsive.isDesktop(context) ? 650 : 600,
      width: Responsive.width(context, width: 1),
      decoration: const BoxDecoration(
          image: DecorationImage(
        alignment: Alignment(0.2, 0.0),
        image: AssetImage('assets/background/background1.jpg'),
        fit: BoxFit.cover,
        opacity: 0.3,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Responsive.width(context,
                width: Responsive.isDesktop(context) ? 0.75 : 0.95),
            child: Greeting(
              fontSize: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.037 : 0.047),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.01 : 0.01),
            ),
            child: SizedBox(
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
          ),
          // SizedBox(
          //     width: Responsive.width(context,
          //         width: Responsive.isDesktop(context) ? 0.75 : 0.95),
          //     child: Row(
          //       children: [
          //         Text(
          //           'I\'m a ',
          //           style: MyTextStyle.ubuntuMedium(
          //               fontSize:   35,
          //               color: MyColors.white),
          //         ),
          //         AnimatedTextKit(animatedTexts: [
          //           TyperAnimatedText('Pursuing BCA Student',
          //               speed: const Duration(milliseconds: 150),
          //               textStyle: MyTextStyle.ubuntuMedium(
          //                   fontSize: 35,
          //                   color: MyColors.white)),
          //           TyperAnimatedText('Flutter Developer',
          //               speed: const Duration(milliseconds: 150),
          //               textStyle: MyTextStyle.ubuntuMedium(
          //                   fontSize:35,
          //                   color: MyColors.white)),
          //
          //           TyperAnimatedText('Android Developer',
          //               speed: const Duration(milliseconds: 150),
          //               textStyle: MyTextStyle.ubuntuMedium(
          //                   fontSize: 35,
          //                   color: MyColors.white)),
          //         ], repeatForever: true, isRepeatingAnimation: true,pause: const Duration(milliseconds: 1200),)
          //       ],
          //     )),
          // SizedBox(
          //   height: Responsive.width(context, width: Responsive.isDesktop(context)? 0.05: 0.06),
          //   child: InkWell(
          //     onTap: () {},
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       width: Responsive.width(context, width: Responsive.isDesktop(context)? 0.17: 0.27 ),
          //       margin: EdgeInsets.symmetric(
          //           vertical: Responsive.width(context, width: 0.01)),
          //       padding: EdgeInsets.symmetric(
          //           vertical: Responsive.width(context, width: 0.004),
          //           horizontal: Responsive.width(context, width: 0.004)),
          //       decoration: BoxDecoration(
          //           color: MyColors.red,
          //           borderRadius: BorderRadius.circular(20)),
          //       child: Row(
          //         children: [
          //           Icon(
          //             Icons.download_rounded,
          //             color: Colors.white,
          //             size: Responsive.width(context, width:Responsive.isDesktop(context)? 0.015: 0.025),
          //           ),
          //           Text(
          //             'Download Resume',
          //             style: MyTextStyle.varelaRound(
          //                 fontSize: Responsive.width(context, width: Responsive.isDesktop(context)? 0.015: 0.025),
          //                 color: MyColors.white),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget mobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.1),
      child: Container(
        height: Responsive.height(context, height: 0.925),
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment(0.2, 0.0),
          image: AssetImage('assets/background/background1.jpg'),
          fit: BoxFit.cover,
          opacity: 0.3,
        )),
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
            // Padding(
            //   padding:
            //       EdgeInsets.only(top: Responsive.width(context, width: 0.008)),
            //   child: SizedBox(
            //       width: Responsive.width(context, width: 0.92),
            //       child: Row(
            //         children: [
            //           Text(
            //             'I\'m a ',
            //             style: MyTextStyle.ubuntuMedium(
            //                 fontSize:   18,
            //                 color: MyColors.white),
            //           ),
            //           AnimatedTextKit(animatedTexts: [
            //             TyperAnimatedText('Pursuing BCA Student',
            //                 speed: const Duration(milliseconds: 150),
            //                 textStyle: MyTextStyle.ubuntuMedium(
            //                     fontSize: 18,
            //                     color: MyColors.white)),
            //             TyperAnimatedText('Flutter Developer',
            //                 speed: const Duration(milliseconds: 150),
            //                 textStyle: MyTextStyle.ubuntuMedium(
            //                     fontSize:18,
            //                     color: MyColors.white)),
            //
            //             TyperAnimatedText('Android Developer',
            //                 speed: const Duration(milliseconds: 150),
            //                 textStyle: MyTextStyle.ubuntuMedium(
            //                     fontSize: 18,
            //                     color: MyColors.white)),
            //           ], repeatForever: true, isRepeatingAnimation: true,pause: const Duration(milliseconds: 1200),)
            //         ],
            //       )),
            // ),
            // SizedBox(
            //   height: Responsive.width(context, width: 0.08),
            //   child: InkWell(
            //     onTap: () {},
            //     borderRadius: BorderRadius.circular(20),
            //     child: Container(
            //       width: Responsive.width(context, width: 0.34),
            //       margin: EdgeInsets.symmetric(
            //           vertical: Responsive.width(context, width: 0.01)),
            //       padding: EdgeInsets.symmetric(
            //           vertical: Responsive.width(context, width: 0.004),
            //           horizontal: Responsive.width(context, width: 0.004)),
            //       decoration: BoxDecoration(
            //           color: MyColors.red,
            //           borderRadius: BorderRadius.circular(20)),
            //       child: Row(
            //         children: [
            //           Icon(
            //             Icons.download_rounded,
            //             color: Colors.white,
            //             size: Responsive.width(context, width: 0.03),
            //           ),
            //           Text(
            //             'Download Resume',
            //             style: MyTextStyle.varelaRound(
            //                 fontSize: Responsive.width(context, width: 0.03),
            //                 color: MyColors.white),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
