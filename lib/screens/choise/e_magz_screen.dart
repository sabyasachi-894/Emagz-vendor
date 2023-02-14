import 'dart:ui';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/choise/e_business_screen.dart';
import 'package:emagz_vendor/social_media/common/bottom_nav/bottom_nav.dart';
import 'package:emagz_vendor/social_media/common/common_appbar.dart';
import 'package:emagz_vendor/social_media/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_transition/page_transition.dart';

import 'e_business_user.dart';

class EmagzScreen extends StatelessWidget {
  const EmagzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [darkPink, darkPinkAcent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/svg/EmagzLogo-white.svg",
                      height: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "eMAGZ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Connecting Universe",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 5.5,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: size.width,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 7),
                      width: size.width / 1.5,
                      height: 260,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFffffff).withOpacity(.12),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                const Color(0xFFffffff).withOpacity(0.18),
                                const Color(0xFFFFFFFF).withOpacity(0.15),
                              ],
                              stops: const [
                                2,
                                0.1,
                              ]),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 22,
                          ),
                          SvgPicture.asset(
                            "assets/svg/emagz.svg",
                            width: 80,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Now never stop learning.\n Learn anywhere ,\n amything.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              // Get.to(() => const SocialMediaHomePage());
                              Get.offAll(() => const BottomNavBar());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              width: size.width / 2,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffEE688A),
                                  // gradient: LinearGradient(
                                  //     begin: Alignment.centerLeft,
                                  //     end: Alignment.centerRight,
                                  //     colors: [
                                  //       const Color(0xFFffffff)
                                  //           .withOpacity(0.09),
                                  //       const Color(0xFFFFFFFF)
                                  //           .withOpacity(0.4),
                                  //     ],
                                  //     stops: const [
                                  //       2,
                                  //       0,
                                  //     ]),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "Get Started",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 20,
                    child: InkWell(
                      onTap: () {
                        // Get.to(() => const EbusinessScreen());
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTopPop,
                                duration: Duration(milliseconds: 500),
                                child: EbusinessScreen(),
                                childCurrent: this));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: size.height / 8.5,
                        width: size.width / 3.5,
                        decoration: BoxDecoration(
                          gradient: myGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/Ebusiness-Icon.svg",
                              height: 55,
                            ),
                            const Text(
                              "eBusiness",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(50)),
                    color: whiteColor.withOpacity(.3)),
                child: Row(
                  children: [
                    Container(
                      width: size.width / 2.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: whiteColor),
                    ),
                    Container(
                      width: size.width / 2.7,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: whiteColor.withOpacity(.3)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "01",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
