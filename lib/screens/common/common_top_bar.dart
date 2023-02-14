import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class commonTopBar extends StatelessWidget {
  final String title;
  const commonTopBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  "assets/png/menu.png",
                  height: 22,
                  width: 22,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/svg/Notify.svg",
              width: 45,
              color: blackButtonColor,
            ),

            // const SizedBox(
            //   width: 10,
            // ),
            InkWell(
              onTap: () {
                Get.to(() => ProfileScreen());
              },
              child: SvgPicture.asset(
                "assets/svg/Account.svg",
                width: 45,
                color: blackButtonColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
