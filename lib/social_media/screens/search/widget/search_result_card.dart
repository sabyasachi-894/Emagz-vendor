import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:flutter/material.dart';

import '../../../../user/models/product_model.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 3,
              spreadRadius: 2)
        ],
        color: whiteColor,
        // borderRadius: BorderRadius.circular(),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(imageList[7]),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Username",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "@username",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "Follow",
            style: TextStyle(
                color: purpleColor, fontSize: 12, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
