import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../constant/colors.dart';
import '../../../common/common_appbar.dart';
import '../../../common/title_switch/title_and_switch_widget.dart';

class StorySettingScreen extends StatelessWidget {
  StorySettingScreen({Key? key}) : super(key: key);
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
                "Story Setting",
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
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Story",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hide your stories from",
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
                            everyOne = val;
                            // setState(() {
                            //   everyOne = val;
                            // });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitleAndSwitchWidget(
                    title: "Close Friends",
                    subTitle: "53 People",
                    isActive: youFollow,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Specific Person",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
