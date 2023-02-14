import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/drawer/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationNotVerifiedScreen extends StatelessWidget {
  const ApplicationNotVerifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/png/Red.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height / 1.9,
              ),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Sorry We Couldn’t \nVerify You",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: cancledColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 220,
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(
                  "We are sorry to inform you that we \ncouldn’t very your account. Better \nluck next time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      // decoration: TextDecoration.none,
                      color: blackButtonColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const ZoomDrawerScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: size.height / 12),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Set My Store",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // decoration: TextDecoration.none,
                            color: cancledColor,
                            fontSize: 20,
                            // height: 3.3,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: cancledColor,
                        size: 18,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
