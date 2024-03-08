import 'package:flutter/material.dart';
import 'package:portfolio/view/skills.dart';
import 'package:portfolio/widgets/drawer_widget.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/view/about.dart';
import 'package:portfolio/view/home.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/logo.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Responsive.isDesktop(context)
          ? null
          : MobileDrawer(
              itemScrollController: itemScrollController,
              onTap: () {
                _scaffoldKey.currentState?.closeDrawer();
              }),
      backgroundColor: MyColors.black,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: MyColors.black,
              title: NavMenuButton(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              )),
      body: Responsive(
        mobile: mobile(),
        desktop: desktop(),
      ),
    );
  }

  Widget desktop() {
    return Row(
      children: [
        Responsive.isDesktop(context)
            ? SizedBox(
                width: Responsive.width(context, width: 0.2),
                height: Responsive.height(context, height: 1),
                child: Scaffold(
                  backgroundColor: MyColors.black,
                  appBar: AppBar(
                    toolbarHeight: Responsive.width(context, width: 0.04),
                    automaticallyImplyLeading: false,
                    backgroundColor: MyColors.black,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Responsive.width(context, width: 0.007)),
                      child: Logo(onTap: () {}),
                    ),
                  ),
                  body: Navigation(
                    itemScrollController: itemScrollController,
                  ),
                ),
              )
            : const SizedBox(),
        SizedBox(
          width: Responsive.width(context,
              width: Responsive.isDesktop(context) ? 0.8 : 1),
          height: MediaQuery.sizeOf(context).height * 1,
          child: screenScrollable(),
        ),
      ],
    );
  }

  Widget mobile() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 1,
      height: MediaQuery.sizeOf(context).height * 1,
      child: screenScrollable(),
    );
  }

  Widget screenScrollable() {
    return ScrollablePositionedList.builder(
      itemCount: 3,
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemBuilder: (context, index) {
        return screens(index);
      },
    );
  }

  Widget screens(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const AboutPage();
      case 2:
        return const SkillsPage();
      default:
        return const HomePage();
    }
  }
}