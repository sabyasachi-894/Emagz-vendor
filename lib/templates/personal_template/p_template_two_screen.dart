import 'package:emagz_vendor/social_media/screens/home/widgets/post_card.dart';
import 'package:flutter/material.dart';

import 'dart:ui';
import 'dart:math' as math;
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class PTemplateTwoScreen extends StatelessWidget {
  const PTemplateTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackButtonColor.withOpacity(.1),
      body: ListView(
        children: [
          Container(
            height: 800,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(templateFiveImage[3]), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Positioned(
                  left: 180,
                  top: -150,
                  child: Transform.rotate(
                    angle: math.pi / 5.5,
                    child: Container(
                      // height: 200,
                      height: 1100,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imageUrlOne),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 350,
                  top: -150,
                  child: Transform.rotate(
                    angle: math.pi / 5.5,
                    child: Container(
                      // height: 200,
                      height: 1100,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imageUrlTwo),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 220,
                  // bottom: 50,
                  left: 100,
                  child: Transform.rotate(
                    angle: -math.pi / 3.2,
                    child: SizedBox(
                      // width: 105,
                      child: Column(
                        children: [
                          Text(
                            "25K",
                            style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontSize: 100,
                                height: .9,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 16,
                                height: .001,
                                // letterSpacing: 1.5,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Amber",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 90,
                          // height: .9,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 12,
                  child: Center(
                    child: Text(
                      "Johanson",
                      // style: GoogleFonts.alexBrush(
                      style: GoogleFonts.cedarvilleCursive(
                          color: cancledColor, letterSpacing: 1, fontSize: 38),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              // blendMode: BlendMode.b,
              child: Container(
                // margin: const EdgeInsets.symmetric(vertical: 10),
                // height: 200,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.5),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl bibendum quis donec laoreet sapien, magna eros, dui adipiscing. ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Follow',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                color: whiteColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Message',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                color: whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            alignment: Alignment.center,
            child: Text(
              "My Intro",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 60,
                  // height: .9,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(),
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(templateFiveImage[2]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Text(
                      //   "About Me ",
                      //   style: GoogleFonts.aguafinaScript(
                      //       color: whiteColor, letterSpacing: 1, fontSize: 28),
                      // )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(templateFiveImage[2]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              dummyText + dummyText + dummyText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: .2,
                  color: whiteColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "About Me ",
              style: GoogleFonts.aguafinaScript(
                  color: whiteColor, letterSpacing: 1, fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlOne), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlThree),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlTwo), fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            alignment: Alignment.center,
            child: Text(
              "My Gallery",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 60,
                  // height: .9,
                  fontWeight: FontWeight.w800),
            ),
          ),
          PostCard(url: templateFiveImage[2]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlTwo), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlTwo), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imageUrlTwo), fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            alignment: Alignment.center,
            child: Text(
              "Short Message",
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 39,
                  // height: .9,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl bibendum quis donec laoreet sapien, magna eros, dui adipiscing. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: whiteColor, fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Thank You",
              style: GoogleFonts.aguafinaScript(
                  color: whiteColor, letterSpacing: 1, fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
