import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/approval_form/approval_status/application_not_verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationVerifiedScreen extends StatelessWidget {
  const ApplicationVerifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/png/Green.png",
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
                  "Verified\n sucessfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: whiteColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 230,
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(
                  "Your application is sucessfully \nverified. Thanks for choosing E-magz",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      // decoration: TextDecoration.none,
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const ApplicationNotVerifiedScreen());
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
                            color: whiteColor,
                            fontSize: 20,
                            // height: 3.3,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: whiteColor,
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
