import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/common/common_appbar.dart';
import 'package:emagz_vendor/social_media/screens/chat/chat_screen.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/home_screen_appbar.dart';
import 'package:emagz_vendor/social_media/screens/settings/personal_page/widgets/setting_common_tile.dart';
import 'package:emagz_vendor/social_media/screens/settings/privacy/privacy_setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class PersonalPageSetting extends StatefulWidget {
  const PersonalPageSetting({Key? key}) : super(key: key);

  @override
  State<PersonalPageSetting> createState() => _PersonalPageSettingState();
}

class _PersonalPageSettingState extends State<PersonalPageSetting> {
  bool activeUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaSettingAppBar(
        title: "Setting",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                height: 250,
                decoration: BoxDecoration(
                  color: whiteAcent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?b=1&k=20&m=1307615661&s=170667a&w=0&h=Zp9_27RVS_UdlIm2k8sa8PuutX9K3HTs8xdK0UfKmYk=',
                              ),
                              maxRadius: 45,
                            ),
                            Positioned(
                                top: 70,
                                left: 60,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: whiteColor,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: blackButtonColor,
                                    size: 10,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rakul Sing",
                              style: TextStyle(
                                  color: blackButtonColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "@rakul_sign18",
                              style: TextStyle(
                                  color: bottomBarIconColor.withOpacity(.8),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Bio",
                      style: TextStyle(
                          color: bottomBarIconColor.withOpacity(.8),
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque volutpat faucibus mattis lacus, dignissim. Sollicitudin eget ut enim, quis. Hendrerit.",
                      style: TextStyle(
                          letterSpacing: .5,
                          color: black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Change to business account",
                          style: TextStyle(
                              color: black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            color: chipColor,
                          ),
                          child: Text(
                            "Change Theme",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                "Your friends and contacts will see when you’re active ",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  FlutterSwitch(
                      activeColor: whiteAcent,
                      toggleColor: pendingColor,
                      padding: 2,
                      height: 20,
                      width: 45,
                      value: activeUser,
                      onToggle: (val) {
                        setState(() {
                          activeUser = val;
                        });
                      }),
                  Text(
                    "  Show my friends and contact when i’m active",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Preferance",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              // const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(() => const PrivacyScreen());
                },
                child: PreferenceTile(
                  title: "Privacy",
                ),
              ),
              PreferenceTile(
                title: "Security",
              ),
              Container(
                height: 64,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Enable my \nlocation",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      FlutterSwitch(
                          activeColor: whiteAcent,
                          toggleColor: pendingColor,
                          padding: 2,
                          height: 20,
                          width: 45,
                          value: activeUser,
                          onToggle: (val) {
                            setState(() {
                              activeUser = val;
                            });
                          }),
                      const SizedBox(
                        width: 25,
                      ),
                    ]),
              ),

              Container(
                height: 64,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Play Sound When i get \nnotification",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      FlutterSwitch(
                          activeColor: whiteAcent,
                          toggleColor: pendingColor,
                          padding: 2,
                          height: 20,
                          width: 45,
                          value: activeUser,
                          onToggle: (val) {
                            setState(() {
                              activeUser = val;
                            });
                          }),
                      const SizedBox(
                        width: 25,
                      ),
                    ]),
              ),
              Container(
                height: 64,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Enable desktop  \nnotification",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      FlutterSwitch(
                          activeColor: whiteAcent,
                          toggleColor: pendingColor,
                          padding: 2,
                          height: 20,
                          width: 45,
                          value: activeUser,
                          onToggle: (val) {
                            setState(() {
                              activeUser = val;
                            });
                          }),
                      const SizedBox(
                        width: 25,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Blocked Users",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),

              Text(
                "Once you blocked someone they will no longer to see things that you post on your feed , tag you , invite you or start a conversation with you. However you can unblock them later if you want ",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 12,
                    letterSpacing: .6,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Manage blocked users",
                style: TextStyle(
                    color: chipColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 54,
                decoration: BoxDecoration(
                    color: blackShaded,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Text(
                  "Add another account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: blackShaded,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
