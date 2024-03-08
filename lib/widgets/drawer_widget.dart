import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_text.dart';
import 'package:portfolio/utils/my_colors.dart';
import 'package:portfolio/utils/my_text_style.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/logo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavButton extends StatelessWidget {
  final int index;
  final ItemScrollController itemScrollController;
  final String title;

  const NavButton(
      {super.key,
      required this.index,
      required this.itemScrollController,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemScrollController.scrollTo(
          index: index,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.isDesktop(context)
                ? Responsive.width(context, width: 0.003)
                : 5,
            horizontal: Responsive.isDesktop(context)
                ? Responsive.width(context, width: 0.006)
                : 13),
        margin: EdgeInsets.symmetric(
          vertical: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.0015)
              : 3,
        ),
        width: Responsive.isDesktop(context)
            ? Responsive.width(context, width: 0.18)
            : 250,
        child: Row(
          children: [
            Image.asset(
              'assets/icons/$title.png',
              height: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.016)
                  : 23,
              width: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.016)
                  : 23,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              title,
              style: MyTextStyle.varelaRound(
                  fontSize: Responsive.isDesktop(context)
                      ? Responsive.width(context, width: 0.016 * 0.9)
                      : 18,
                  color: MyColors.navWhite),
            )
          ],
        ),
      ),
    );
  }
}

class NavTitle extends StatelessWidget {
  final String title;
  const NavTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Responsive.width(
            context,
            width: 0.01,
          ),
          left: Responsive.isDesktop(context) ? 0 : 13),
      child: SizedBox(
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.18)
              : 250,
          child: Text(title,
              style: MyTextStyle.ubuntuMedium(
                  fontSize: Responsive.isDesktop(context)
                      ? Responsive.width(context, width: 0.018)
                      : 25,
                  color: MyColors.navWhite))),
    );
  }
}

class SocialCard extends StatelessWidget {
  final String label;
  final String assetName;
  final Function() onTap;

  const SocialCard({
    super.key,
    required this.label,
    required this.assetName,
     required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Responsive.width(context, width: 0.004)),
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.18)
              : 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/$assetName.png',
                    height: Responsive.isDesktop(context)
                        ? Responsive.width(context, width: 0.02)
                        : 25,
                    width: Responsive.isDesktop(context)
                        ? Responsive.width(context, width: 0.02)
                        : 25,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    label,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.02 - 0.007)
                            : 18,
                        color: MyColors.navWhite),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String label;
  final String info;
  final String assetName;
  final Function()? onTap;

  const ContactCard({
    super.key,
    required this.label,
    required this.info,
    required this.assetName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Responsive.width(context, width: 0.004),
              horizontal: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.003)
                  : 3),
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.23)
              : 250,
          child: Row(
            children: [
              Image.asset(
                'assets/icons/$assetName.png',
                height: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.03)
                    : 35,
                width: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.03)
                    : 35,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.012)
                            : 15,
                        color: MyColors.navWhite),
                  ),
                  Text(
                    info,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.01)
                            : 13,
                        color: MyColors.navWhite),
                  )
                ],
              )
            ],
          )),
    );
  }
}

class NavMenuButton extends StatelessWidget {
  final Function() onTap;
  const NavMenuButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Row(
        children: [
          GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.menu,
                color: MyColors.white,
              )),
          const SizedBox(
            width: 10,
          ),
          Logo(onTap: () {}),
        ],
      ),
    );
  }
}

class Navigation extends StatelessWidget {
  final ItemScrollController itemScrollController;
  const Navigation({super.key, required this.itemScrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: Responsive.isDesktop(context) ? 0 : 10),
              child: CircleAvatar(
                backgroundColor: MyColors.red,
                backgroundImage: const AssetImage('assets/images/profile.png'),
                radius: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.075)
                    : 100,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.01)
                  : 10,
            ),
            NavButton(
              index: 0,
              itemScrollController: itemScrollController,
              title: 'Home',
            ),
            NavButton(
              index: 1,
              itemScrollController: itemScrollController,
              title: 'About',
            ),
            NavButton(
              index: 2,
              itemScrollController: itemScrollController,
              title: 'Skills',
            ),
            NavButton(
              index: 4,
              itemScrollController: itemScrollController,
              title: 'Projects',
            ),
            const NavTitle(
              title: 'Contact Info',
            ),
            ContactCard(
              label: 'Email',
              assetName: 'email',
              info: AppText.email,
              onTap: (){
                Uri uri = Uri.parse('mailto:bhatiachirag2002@gmail.com');
                launchUrl(uri);
              },
            ),
            ContactCard(
              label: 'Phone',
              assetName: 'call',
              info: AppText.phone,
              onTap: (){
                Navigator.pop(context);
                Uri uri = Uri.parse("tel://+91${AppText.phone}");
                launchUrl(uri);
              },
            ),
            ContactCard(
              label: 'Address',
              assetName: 'location',
              info: AppText.location,
            ),
            const NavTitle(
              title: 'Social',
            ),
             SocialCard(
               onTap: () {
                 Uri uri = Uri.parse(
                     'https://https://wa.me/91${AppText.phone}/');
                 launchUrl(uri);
               },
              label: 'Whatsapp',
              assetName: 'whatsapp',
            ),
             SocialCard(
               onTap: () {
                 Uri uri = Uri.parse(
                     'https://https://twitter.com/BhatiaChirag02/');
                 launchUrl(uri);
               },
              label: 'X',
              assetName: 'twitter',
            ),
            SocialCard(
              onTap: () {
                Uri uri = Uri.parse(
                    'https://www.linkedin.com/in/bhatiachirag2002/');
                launchUrl(uri);
              },
              label: 'Linkedin',
              assetName: 'linkedin',
            ),
            SocialCard(
              onTap: () {
                Uri uri = Uri.parse(
                    'https://https://github.com/TeaCoded/');
                launchUrl(uri);
              },
              label: 'GitHub',
              assetName: 'github',
            ),
          ],
        ));
  }
}
