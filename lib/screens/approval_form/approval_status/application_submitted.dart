import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/approval_form/approval_status/application_verified.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ApplicationSubmittedScreen extends StatelessWidget {
  const ApplicationSubmittedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/png/Blue.png",
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
                alignment: Alignment.center,
                child: Text(
                  "Application submitted\n sucessfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: blackButtonColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 220,
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: const Text(
                  "It take 1 -2 days to verify  your \napplication. Our agents will verify \nand let you in asap. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      // decoration: TextDecoration.none,
                      color: Color(0xff959595),
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const ApplicationVerifiedScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: size.height / 12),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Back to Dashboard",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // decoration: TextDecoration.none,
                            color: Color(0xff3C83E6),
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff3C83E6),
                        size: 20,
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
