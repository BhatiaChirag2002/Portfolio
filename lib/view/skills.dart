import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/widgets/skills_container.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: desktop());
  }

  Widget desktop() {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.width(context,
                width: Responsive.isDesktop(context) ? 0.02 : 0.03)),
        child: Column(
          children: [
            ScreenNameTitle(
                fontSize: Responsive.width(context,
                    width: Responsive.isDesktop(context) ? 0.04 : 0.06),
                textOne: 'My',
                textTwo: 'Skills'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(context, width: Responsive.isDesktop(context) ? 0.03 : 0.02)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        child: Lottie.asset('assets/jsons/skills.json',
                            width: Responsive.width(context, width: Responsive.isDesktop(context) ? 0.245 : 0.298 )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: MyColors.white17,
                            borderRadius: BorderRadius.circular(30)),
                        width: Responsive.width(context, width: Responsive.isDesktop(context) ? 0.34 : 0.45),
                        child: Padding(
                          padding: EdgeInsets.all(
                              Responsive.width(context, width: 0.008)),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.025 : 0.03),
                                  textOne: 'Technical',
                                  textTwo: 'Skills'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Programming Language',
                                  name: 'Java, Dart'),
                              Skills(
                                  fontSize:
                                  Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Mobile App Development',
                                  name: 'Flutter, Java'),
                              Skills(
                                  fontSize:
                                  Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Markup Languages',
                                  name: 'XML'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'API Integration',
                                  name: 'RESTful APIs'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: MyColors.white17,
                            borderRadius: BorderRadius.circular(30)),
                        width: Responsive.width(context, width: Responsive.isDesktop(context) ? 0.34 : 0.45),
                        child: Padding(
                          padding: EdgeInsets.all(
                              Responsive.width(context, width: 0.008)),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                  fontSize:
                                  Responsive.width(context, width: Responsive.isDesktop(context) ? 0.025 : 0.03),
                                  textOne: 'Tool and Platform',
                                  textTwo: ''),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'UI/UX design',
                                  name: 'Figma'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'State management',
                                  name: 'GetX'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Backend Services',
                                  name: 'Firebase'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Version control',
                                  name: 'Git'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'Collaboration',
                                  name: 'GitHub'),
                              Skills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  category: 'CI/CD',
                                  name: 'GitHub Action'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Responsive.width(context, width: 0.02)),
                      Container(
                        decoration: BoxDecoration(
                            color: MyColors.white17,
                            borderRadius: BorderRadius.circular(30)),

                        width: Responsive.width(context, width: Responsive.isDesktop(context) ? 0.34 : 0.45),
                        child: Padding(
                          padding: EdgeInsets.all(
                              Responsive.width(context, width: 0.008)),
                          child: Column(
                            children: [
                              ScreenNameTitle(
                                  fontSize:
                                  Responsive.width(context, width: Responsive.isDesktop(context) ? 0.025 : 0.03),
                                  textOne: 'Soft Skills and Mindset',
                                  textTwo: ''),
                              SoftSkills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  name: 'Creativity'),
                              SoftSkills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  name: 'Continuous learning mindset'),
                              SoftSkills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  name: 'Problem-solving'),
                              SoftSkills(
                                  fontSize:
                                      Responsive.width(context, width: Responsive.isDesktop(context) ? 0.015 :0.02),
                                  name: 'Self-motivation'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return Padding(
        padding: EdgeInsets.all(Responsive.width(context, width: 0.02)),
        child: SizedBox(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScreenNameTitle(
                      fontSize: Responsive.width(context, width: 0.07),
                      textOne: 'My',
                      textTwo: 'Skills'),
                  SizedBox(
                    child: Lottie.asset('assets/jsons/skills.json',
                        width: Responsive.width(context, width: 0.6 )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: MyColors.white17,
                        borderRadius: BorderRadius.circular(30)),
                    width: Responsive.width(context, width: 0.9),
                    child: Padding(
                      padding: EdgeInsets.all(
                          Responsive.width(context, width: 0.02)),
                      child: Column(
                        children: [
                          ScreenNameTitle(
                              fontSize:
                              Responsive.width(context, width: 0.06),
                              textOne: 'Technical',
                              textTwo: 'Skills'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Programming Language',
                              name: 'Java, Dart'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Mobile App Development',
                              name: 'Flutter, Java'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Markup Languages',
                              name: 'XML'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'API Integration',
                              name: 'RESTful APIs'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.width(context, width: 0.04)),
                  Container(
                    decoration: BoxDecoration(
                        color: MyColors.white17,
                        borderRadius: BorderRadius.circular(30)),
                    width: Responsive.width(context, width: 0.9),
                    child: Padding(
                      padding: EdgeInsets.all(
                          Responsive.width(context, width: 0.02)),
                      child: Column(
                        children: [
                          ScreenNameTitle(
                              fontSize:
                              Responsive.width(context, width: Responsive.isDesktop(context) ? 0.025 : 0.03),
                              textOne: 'Tool and Platform',
                              textTwo: ''),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'UI/UX design',
                              name: 'Figma'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'State management',
                              name: 'GetX'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Backend Services',
                              name: 'Firebase'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Version control',
                              name: 'Git'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'Collaboration',
                              name: 'GitHub'),
                          Skills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              category: 'CI/CD',
                              name: 'GitHub Action'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.width(context, width: 0.04)),
                  Container(
                    decoration: BoxDecoration(
                        color: MyColors.white17,
                        borderRadius: BorderRadius.circular(30)),

                    width: Responsive.width(context, width: 0.9),
                    child: Padding(
                      padding: EdgeInsets.all(
                          Responsive.width(context, width: 0.02)),
                      child: Column(
                        children: [
                          ScreenNameTitle(
                              fontSize:
                              Responsive.width(context, width: Responsive.isDesktop(context) ? 0.025 : 0.03),
                              textOne: 'Soft Skills and Mindset',
                              textTwo: ''),
                          SoftSkills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              name: 'Creativity'),
                          SoftSkills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              name: 'Continuous learning mindset'),
                          SoftSkills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              name: 'Problem-solving'),
                          SoftSkills(
                              fontSize:
                              Responsive.width(context, width: 0.04),
                              name: 'Self-motivation'),
                        ],
                      ),
                    ),
                  ),
                ])));
  }
}
