import 'dart:ui';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/post_card.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultBusinesstempScreen extends StatelessWidget {
  const DefaultBusinesstempScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent,
                chipColor,
              ],
            ),
          ),
          child: Container(
            // margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  "assets/png/Blur-Bg Image.png",

                  // image: NetworkImage(
                  //   "https://images.unsplash.com/photo-1484584343816-b22e89904ab2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODQ3fHxkYXJrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  chipColor,
                ],
              ),
            ),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(templateFiveImage[0]),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 2.0),
                              // blendMode: BlendMode.b,
                              child: Container(
                                // margin: const EdgeInsets.symmetric(vertical: 10),
                                height: 250,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.1),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: .5),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight,
                                          colors: [
                                            const Color(0xFFffffff)
                                                .withOpacity(0.30),
                                            const Color(0xFFFFFFFF)
                                                .withOpacity(0.3),
                                          ],
                                          stops: const [
                                            2,
                                            0.1,
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        "LO\nGO",
                                        style: TextStyle(
                                            color: whiteColor, height: 1),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "Welcome to Abc",
                                      style: GoogleFonts.bellefair(
                                          color: whiteColor,
                                          fontSize: 31,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Subscribe',
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
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 2.0),
                              // blendMode: BlendMode.b,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  // margin: const EdgeInsets.symmetric(vertical: 10),
                                  height: 150,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.1),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Positioned(
                                        height: 140,
                                        left: -15,
                                        child: Container(
                                          width: 160,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/png/aboutButton.png"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        height: 140,
                                        left: 100,
                                        child: Container(
                                          width: 160,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/png/oroductButton.png"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        height: 140,
                                        left: 215,
                                        child: Container(
                                          width: 150,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/png/postButton.png"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    color: blackButtonColor,
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.newspaper_rounded,
                              color: whiteAcent,
                              size: 32,
                            ),
                          );
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                        templateFiveImage[1],
                      ),
                      fit: BoxFit.cover,
                    )),
                    height: 220,
                    width: double.infinity,
                    child: Container(
                        // color: blackButtonColor.withOpacity(.6),
                        ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "About us",
                        style: GoogleFonts.bellefair(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Text(
                          dummyText + dummyText,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              color: whiteColor,
                              fontSize: 12,
                              height: 1.5,
                              letterSpacing: .4),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "650k",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Followers",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "5000",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Post",
                                style: GoogleFonts.roboto(
                                    color: whiteColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Reach us",
                        style: GoogleFonts.bellefair(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.call,
                            color: whiteColor,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.mail_rounded,
                            color: whiteColor,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: whiteColor,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.home_filled,
                            color: whiteColor,
                            size: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 2.0),
                            // blendMode: BlendMode.b,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                // margin: const EdgeInsets.symmetric(vertical: 10),
                                height: 150,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.1),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      height: 140,
                                      left: 50,
                                      child: Container(
                                        width: 160,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/oroductButton.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      height: 140,
                                      left: 170,
                                      child: Container(
                                        width: 150,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/postButton.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Text(
                              "Product",
                              style: GoogleFonts.bellefair(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: whiteColor),
                            ),
                            const Spacer(),
                            Text(
                              "view all",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: 126,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            products[index].image.toString()),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product ",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: whiteColor),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: grayColor),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: blackButtonColor,
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  ClipRRect(
                    child: Transform.scale(
                      scale: .9,
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 165,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/png/postButton.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "View All",
                          style: GoogleFonts.bellefair(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: imageList.length,
                    // padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: Get.size.height / 2.7,
                        child: PostCard(
                          isBorder: false,
                          url: imageList[index],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
