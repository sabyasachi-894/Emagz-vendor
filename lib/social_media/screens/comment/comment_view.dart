import 'dart:ui';

import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentViewScreen extends StatelessWidget {
  const CommentViewScreen({Key? key}) : super(key: key);
  final String url =
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.size.height,
              // margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {
                // Get.to(() => CommentViewScreen());
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: SizedBox(
                      height: Get.size.height / 2,
                      width: Get.width,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                // width: Get.size.width / 2.5,
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit........ ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: whiteColor)),
                              ),
                              // const Expanded(child: SizedBox()),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: cancledColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "26",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: whiteColor),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.mode_comment_outlined,
                                      color: blueButtonColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "03",
                                      style: TextStyle(
                                          fontSize: 13,
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
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: const Text(
                                  "COMMENT",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffD2D2D2)),
                                ),
                              ),
                              CommentCard(),
                              CommentCard(),
                              CommentCard(),

                              CommentCard(),
                              Container(
                                // alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        const Color(0xFFffffff)
                                            .withOpacity(0.20),
                                        const Color(0xFFFFFFFF)
                                            .withOpacity(0.25),
                                      ],
                                      stops: const [
                                        2,
                                        0.1,
                                      ]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  // expands: true,
                                  showCursor: false,
                                  cursorColor: whiteColor,
                                  scrollPadding: EdgeInsets.zero,
                                  decoration: InputDecoration(
                                      hintText: "Add Your Comment",
                                      hintStyle: TextStyle(
                                          color: whiteColor, fontSize: 12),
                                      isDense: true,

                                      // filled: true,/
                                      border: InputBorder.none,
                                      contentPadding:
                                          const EdgeInsets.only(left: 10),
                                      suffix: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Icon(
                                            Icons.send_rounded,
                                            color: whiteColor,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  const CommentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 228,
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffD2D2D2)),
            ),
          ),
          const Text(
            "5:30 PM",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xffD2D2D2)),
          ),
        ],
      ),
    );
  }
}
