import 'dart:math';

import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/common/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../common/title_switch/title_and_switch_widget.dart';

class CommentSetting extends StatefulWidget {
  const CommentSetting({Key? key}) : super(key: key);

  @override
  State<CommentSetting> createState() => _CommentSettingState();
}

class _CommentSettingState extends State<CommentSetting> {
  bool youFollow = false;
  bool everyOne = true;
  bool yourFollower = false;
  bool followAndFollower = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaSettingAppBar(title: "Setting"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Comment Setting",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(15),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Control",
                    style: TextStyle(
                        color: signInHeading,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Allow comments from",
                              style: TextStyle(
                                  color: blackButtonColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Block comment from",
                            style: TextStyle(
                                color: blackButtonColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            width: 140,
                            child: Text(
                              "Any new comment from people you block will not be visible to anyone but them",
                              style: TextStyle(
                                  letterSpacing: .3,
                                  color: signInHeading,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Everyone",
                                style: TextStyle(
                                    color: purpleColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "0 people",
                                style: TextStyle(
                                    color: purpleColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 30,
                            // width: 140,
                            child: Text(
                              "",
                              style: TextStyle(
                                  letterSpacing: .3,
                                  color: signInHeading,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(15),
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Allow comments from",
                    style: TextStyle(
                        color: signInHeading,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Everyone",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      FlutterSwitch(
                          activeColor: whiteAcent,
                          toggleColor: blueColor,
                          padding: 1,
                          height: 20,
                          width: 50,
                          inactiveColor: lightgrayColor,
                          inactiveToggleColor: toggleInactive,
                          value: everyOne,
                          onToggle: (val) {
                            setState(() {
                              everyOne = val;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitleAndSwitchWidget(
                    title: "People you follow",
                    subTitle: "53 People",
                    isActive: youFollow,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TitleAndSwitchWidget(
                    title: "Your followers",
                    subTitle: "53 People",
                    isActive: yourFollower,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TitleAndSwitchWidget(
                    title: "People you follow and your followers",
                    subTitle: "550 People",
                    isActive: followAndFollower,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(15),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Block comments from",
                    style: TextStyle(
                        color: signInHeading,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: whiteAcent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: grayColor)),
                    child: TextField(
                      cursorColor: grayColor,
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
