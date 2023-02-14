import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class BusinessProfileSetupScreen extends StatelessWidget {
  const BusinessProfileSetupScreen({Key? key}) : super(key: key);

  @override
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
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 20, bottom: 10),
              height: 425,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Setup your profile",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Let’s setup your profile",
                    style: TextStyle(
                        color: accountGray,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: grayColor,
                          child: const Text(
                            "LOGO",
                            style: TextStyle(
                                color: Color(0xff646464),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 55,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: whiteColor,
                            child: CircleAvatar(
                              backgroundColor: chipColor,
                              radius: 6,
                              child: Icon(
                                Icons.power_settings_new_sharp,
                                color: whiteColor,
                                size: 5,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Business Name",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 35,
                    child: TextFormField(
                      // controller: controller,
                      // maxLines: maxLines,
                      cursorColor: grayColor,
                      // keyboardType: TextInputType.n,
                      // autofocus: true,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color(
                              0xff818181,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 9),
                        fillColor: Color(0xffF1F1F1),
                        hintText: "UXM",
                        filled: true,
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: lightgrayColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Business Type",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 35,
                    child: TextFormField(
                      // controller: controller,
                      // maxLines: maxLines,
                      cursorColor: grayColor,
                      // keyboardType: TextInputType.n,
                      // autofocus: true,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color(
                              0xff818181,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 9),
                        fillColor: Color(0xffF1F1F1),
                        hintText: "UXM",
                        filled: true,
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: lightgrayColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: chipColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Go with default theme",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: accountGray,
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
