import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/profile/profile_screen.dart';
import 'package:emagz_vendor/social_media/screens/account/personal_account.dart';
import 'package:emagz_vendor/social_media/screens/settings/personal_page/personal_page_setting.dart';
import 'package:emagz_vendor/user/screens/notifiction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../screens/notification/notification_screen.dart';

class SocialMediaAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  const SocialMediaAppBar({
    required this.title,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);
  final String url =
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, right: 10, left: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                    // ZoomDrawer.of(context)!.toggle();
                  },
                  child: Image.asset(
                    "assets/png/drawer.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const SocialNotificationScreen());
                },
                child: SvgPicture.asset(
                  "assets/svg/Notify.svg",
                  width: 40,
                  color: blackButtonColor,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => const PersonalPageSetting());
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(url), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  )),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
