import 'dart:ui';

import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class PTemplateOneScreen extends StatelessWidget {
  const PTemplateOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackButtonColor.withOpacity(.1),
      body: ListView(
        children: [
          Container(
            height: 650,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(templateFiveImage[2]),
                fit: BoxFit.cover,
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.saturation),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 390,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                      // blendMode: BlendMode.b,
                      child: Container(
                        // margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 260,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.5),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 135,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70, right: 70, top: 100),
                  height: 400,
                  // width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    image: DecorationImage(
                      image: NetworkImage(templateFiveImage[2]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 35,
                  child: SizedBox(
                      width: 105,
                      child: Text(
                        "JAMESWOOD",
                        style: GoogleFonts.secularOne(
                            color: whiteColor,
                            fontSize: 27,
                            height: .9,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Positioned(
                  bottom: 210,
                  // bottom: 50,
                  right: 22,
                  child: SizedBox(
                    width: 105,
                    child: Column(
                      children: [
                        Text(
                          "15K",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontSize: 45,
                              height: .9,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 10,
                              height: .7,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            // color: Color.fromARGB(2, 0, 0, 0),
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Intro",
                  style: GoogleFonts.secularOne(
                      color: whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  dummyText,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      color: whiteColor,
                      fontSize: 12,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(),
                            height: 220,
                            // width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellow),
                              image: DecorationImage(
                                image: NetworkImage(templateFiveImage[2]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "About Me ",
                            style: GoogleFonts.aguafinaScript(
                                color: whiteColor,
                                letterSpacing: 1,
                                fontSize: 28),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 220,
                        // width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow),
                          image: DecorationImage(
                            image: NetworkImage(templateFiveImage[2]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "My Gallery",
                  style: GoogleFonts.secularOne(
                      color: whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  dummyText,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      color: whiteColor,
                      fontSize: 12,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  // alignment: Alignment.center,
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 420,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                            image: NetworkImage(templateFiveImage[3]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 10,
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                            image: NetworkImage(templateFiveImage[1]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      right: 10,
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                            image: NetworkImage(templateFiveImage[2]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                    height: 80,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(templateFiveImage[index]),
                              ),
                              const SizedBox(
                                width: 12,
                              )
                            ],
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Short Message",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.italiana(
                        color: chatContainer,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff686868),
                      fontSize: 14,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Thank You ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aguafinaScript(
                        color: const Color(0xff686868),
                        letterSpacing: 2,
                        fontSize: 35),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
