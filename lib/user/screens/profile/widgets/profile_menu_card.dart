import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuCard extends StatelessWidget {
  final String backGroundImage;
  // final String icon;
  final Widget icon;
  final String title;
  const ProfileMenuCard(
      {Key? key,
      required this.backGroundImage,
      required this.icon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: size.width / 2.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backGroundImage), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            title,
            // "My Coupans",
            style: TextStyle(
              fontSize: 10,
              // wordSpacing: 1,
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
