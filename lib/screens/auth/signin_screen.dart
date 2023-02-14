import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/form_haeding_text.dart';
import 'widgets/my_custom_textfiled.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .05,
            ),
            FormHeadingText(
              fontWeight: FontWeight.w500,
              color: blackButtonColor,
              headings: "E-mail / Phone no",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .01,
            ),
            FormHeadingText(
              fontWeight: FontWeight.w500,
              color: blackButtonColor,
              headings: "Password",
            ),
            MyCustomTextfiled(),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              // margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.centerRight,
              child: FormHeadingText(
                headings: "Forgot Password ?",
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  gradient: buttonGradient,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(color: whiteColor, fontSize: 15),
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
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: blackButtonColor),
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
                    radius: 15,
                    backgroundColor: whiteColor,
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
