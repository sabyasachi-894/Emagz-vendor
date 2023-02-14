import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/auth/widgets/form_haeding_text.dart';
import 'package:emagz_vendor/screens/choise/e_business_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../choise/e_business_screen.dart';
import 'widgets/my_custom_textfiled.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("${size.width}");
    print("${size.height}");
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: size.height * .04,
            // ),
            FormHeadingText(
              color: signInHeading,
              headings: "Name",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .01,
            ),
            FormHeadingText(
              color: signInHeading,
              headings: "E-mail / Phone no",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .01,
            ),
            FormHeadingText(
              color: signInHeading,
              headings: "Date of birth",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .01,
            ),
            FormHeadingText(
              color: signInHeading,
              headings: "password",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .01,
            ),
            FormHeadingText(
              color: signInHeading,
              headings: "Confirm password",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .03,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Get.to(() => const EbusinessScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    gradient: buttonGradient,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: whiteColor, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 1),
              child: Text(
                "Continue With",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: unselectedLabel),
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              // margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: 15,
                    backgroundImage: const NetworkImage(
                        "https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg"),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: 15,
                    backgroundImage: const NetworkImage(
                        "https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-transparent-png.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
