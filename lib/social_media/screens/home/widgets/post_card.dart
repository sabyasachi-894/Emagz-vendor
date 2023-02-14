import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/comment/comment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostCard extends StatelessWidget {
  bool isBorder;
  PostCard({
    Key? key,
    required this.url,
    this.isBorder = false,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height / 1.5,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          border: isBorder == true
              ? Border.all(
                  color: const Color(0xff46F2DB),
                  width: 1.5,
                  style: BorderStyle.solid)
              : null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(url),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                    Text("@username_52",
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: whiteColor)),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => CommentViewScreen());
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFffffff).withOpacity(.15),
                ),
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.20),
                      const Color(0xFFFFFFFF).withOpacity(0.25),
                    ],
                    stops: const [
                      2,
                      0.1,
                    ]),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: Get.size.width / 2.5,
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.w400,
                          color: whiteColor)),
                ),
                const Expanded(child: SizedBox()),
                Icon(
                  Icons.favorite_border,
                  color: cancledColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "26",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.mode_comment_outlined,
                  color: blueButtonColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "03",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.send_sharp,
                  color: Color(0xff180C63),
                ),
                const SizedBox(
                  width: 5,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
