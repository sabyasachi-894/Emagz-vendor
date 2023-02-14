import 'dart:ui';

import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/choise/e_business_user.dart';
import 'package:emagz_vendor/screens/choise/e_magz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:math' as math;

class EbusinessScreen extends StatelessWidget {
  const EbusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: [darkBlue, darkBlueAcent])),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.bottomToTopPop,
                              child: EbussinessUser(),
                              childCurrent: this));
                    },
                    child: SizedBox(
                      width: size.width,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width / 7),
                        width: size.width / 1.5,
                        height: 265,
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
                              "assets/svg/ebusiness.svg",
                              width: 100,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            const Text(
                              "Shop all type of product that you\n love without changing multiple \napps. Shoping made easy ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const EbussinessUser());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 30),
                                width: size.width / 2,
                                height: 40,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(-0.4, 3),
                                      end: Alignment(0.6, -3),
                                      // begin: Alignment.bottomLeft,
                                      // end: Alignment.topRight,
                                      colors: [
                                        Color(0xff5ACFF9),
                                        Color(0xff38B1F4),
                                        Color(0xff5BC3FC),
                                        Color(0xff23A3FF),
                                        Color(0xff2489D2),
                                        Color(0xff2985C7),
                                        // lightBlue,

                                        // darkBlueAcent,
                                        // darkBlueAcent,

                                        // const blue.withOpacity(0.09),
                                        // const Color(0xFFFFFFFF).withOpacity(0.4),
                                      ],

                                      // stops: [
                                      //   -6.1,
                                      //   9.64,
                                      //   25.9,
                                      //   59.71,
                                      //   74.51,
                                      //   93.99,
                                      // ],
                                    ),
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
                  ),
                  Positioned(
                    left: 1,
                    top: 20,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: size.height / 8.5,
                      width: size.width / 3.5,
                      decoration: BoxDecoration(
                        gradient: pinkGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              // Get.to(() => const EmagzScreen());
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.topToBottom,
                                      duration: Duration(milliseconds: 500),
                                      child: EmagzScreen(),
                                      childCurrent: this));
                            },
                            child: SvgPicture.asset(
                              "assets/svg/emagz.svg",
                              height: 65,
                            ),
                          ),
                        ],
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
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: whiteColor.withOpacity(.3)),
                    ),
                    Container(
                      width: size.width / 2.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: whiteColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "02",
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
