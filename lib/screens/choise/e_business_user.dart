import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/approval_form/approval_form.dart';
import 'package:emagz_vendor/user/common/bottom_nav.dart';
import 'package:emagz_vendor/user/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EbussinessUser extends StatelessWidget {
  const EbussinessUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              // "assets/png/bg.jpeg",
              "assets/png/user.jpeg",
            ),
            fit: BoxFit.cover),
        // gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [
        //     darkBlue,
        //     const Color(0xff4D50B6),
        //     const Color(0xff4D50B6),
        //   ],
        // ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/png/menu.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "eMarket",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/svg/Notify.svg",
                    width: 45,
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/png/Emagz-logo.png",
              height: size.height / 3,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fitWidth,
                      opacity: .02,
                      image: AssetImage(
                        "assets/png/Emagz-logo.png",
                      )),
                  color: blackButtonColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height / 6,
                    ),
                    const Text(
                      "Welcome User",
                      style: TextStyle(
                          fontSize: 25,
                          // height: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Have a good day",
                      style: TextStyle(
                          fontSize: 15,
                          // height: 10,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height / 12,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAll(() => UserBottomNavBar());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: size.width / 1.8,
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(-0.4, .6),
                              end: const Alignment(0.5, -5.5),
                              colors: [
                                darkBlue,
                                darkBlueAcent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "Continue as user",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const ApprovalFormScreen());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: size.width / 1.8,
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.4, .6),
                              end: Alignment(0.5, -5.5),
                              colors: [
                                darkBlue,
                                darkBlueAcent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "Continue as Vendor",
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
            )
          ],
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            color: Colors.black,
            height: 20,
            child: const Text(
              "Back",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
