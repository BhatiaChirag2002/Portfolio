import 'package:flutter/material.dart';
import 'package:portfolio/widgets/drawer_widget.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MobileDrawer extends StatelessWidget {
  final ItemScrollController itemScrollController;
  final Function() onTap;
  const MobileDrawer({super.key, required this.itemScrollController, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: Responsive.height(context, height: 1),
      child: Scaffold(
          backgroundColor: MyColors.black,
          appBar: AppBar(
            backgroundColor: MyColors.black,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(left: 15,top: 13, bottom: 13 ),
              child: NavMenuButton(
                onTap: onTap,
              ),
            ),
          ),
          body: Navigation(itemScrollController: itemScrollController,)
      ),
    );
  }
}

