import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class BusinessAccountConfirmationScreen extends StatelessWidget {
  const BusinessAccountConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/png/social_back.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              height: 280,
              width: size.width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: blackButtonColor.withOpacity(.15),
                    blurRadius: 6,
                    offset: const Offset(
                      2,
                      6,
                    ),
                    spreadRadius: 1)
              ], borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Congratulations",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Now your account is business account ",
                    style: TextStyle(
                        color: accountGray,
                        fontSize: 7,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFCFCFC),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "View Insights",
                            style: TextStyle(
                                color: blackButtonColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFCFCFC),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Analysis your post",
                            style: TextStyle(
                                color: blackButtonColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets,
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xffFCFCFC),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Redirect your customer to your e-commerce",
                      style: TextStyle(
                          color: blackButtonColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: chipColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
