import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/profile/profile_screen.dart';
import 'package:emagz_vendor/user/screens/notifiction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SocialMediaSettingAppBar extends StatelessWidget
    with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  const SocialMediaSettingAppBar({
    required this.title,
    Key? key,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Image.asset(
            "assets/png/drawer.png",
            color: blackButtonColor,
          )
          //  Icon(
          //   Icons.menu,
          //   size: 30,
          //   color: blackButtonColor,
          // ),
          ),
      centerTitle: false,
      title: Text(
        title,
        style: TextStyle(
            color: blackButtonColor, fontSize: 22, fontWeight: FontWeight.w600),
      ),
      actions: [
        Row(
          children: [
            Transform.scale(
              scale: .7,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  alignment: Alignment.center,
                  // height: 20,
                  // width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: chipColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 15, top: 10, bottom: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}
