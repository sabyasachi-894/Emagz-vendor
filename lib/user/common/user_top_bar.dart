import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/profile/profile_screen.dart';
import 'package:emagz_vendor/user/screens/notifiction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserTopBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  const UserTopBar({
    required this.title,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, right: 10, left: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                    // ZoomDrawer.of(context)!.toggle();
                  },
                  child: Image.asset(
                    "assets/png/temp_icon.png",
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
                  // Get.to(() => ProfileScreen());
                },
                child: SvgPicture.asset(
                  "assets/svg/MagnifyingGlass.svg",
                  width: 25,
                  color: blackButtonColor,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => NotificationScreenUser());
                },
                child: SvgPicture.asset(
                  "assets/svg/Notify.svg",
                  width: 40,
                  color: blackButtonColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
