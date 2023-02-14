import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/templates/widgets/fav_and_locate_widget.dart';
import 'package:emagz_vendor/templates/widgets/temp_one_sliderCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/appbar/common_appbar.dart';
import '../widgets/common_slider.dart';

class TemplateOne extends StatefulWidget {
  TemplateOne({Key? key}) : super(key: key);

  @override
  State<TemplateOne> createState() => _TemplateOneState();
}

class _TemplateOneState extends State<TemplateOne> {
  final controller = PageController(initialPage: 0);
  final controllerTwo = PageController(initialPage: 0, viewportFraction: .85);

  int activePageTwo = 0;
  List<String> images = [
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  @override
  void initState() {
    super.initState();
  }

  List<Widget> indicatorsTwo(
    imagesLength,
    currentIndex,
  ) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 13,
        height: 13,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : grayColor,
            shape: BoxShape.circle),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: whiteColor,
            image: const DecorationImage(
                image: AssetImage(
              "assets/png/S.png",
            ))),
        child: Scaffold(
          // appBar: TempleteAppBar(
          //   title: "",
          // ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              children: [
                TempleteAppBar(
        title: "",
        // isBlack: false,
      ),
                const SizedBox(
                  height: 20,
                ),
                // TempleteAppBar(),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  "https://images.unsplash.com/photo-1565462905102-140e712045aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                  height: 300,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: 54,
                  alignment: Alignment.center,
                  child: Text(
                    "Store Name",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Color(0xff262626),
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                    // style: TextStyle(
                    //     // fontFamily: GoogleFonts.poppins(),
                    //     color: Color(0xff262626),
                    //     // color: blackButtonColor,
                    //     fontSize: 35,
                    //     fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  // height: 54,
                  alignment: Alignment.center,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque curabitur et lorem gravida pretium mi. Nisi, orci, egestas nulla\n sapien at cras. Diam.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        color: Color(0xff454545),
                        fontSize: 15,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                 FavouriteAndLocateWidget(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        margin: EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 130,
                        margin: EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 300,
                  alignment: Alignment.center,
                  color: Color(0xff1B4F30),
                  child: Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nIpsum augue amet,",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.seaweedScript(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // height: 300,
                      alignment: Alignment.center,
                      child: Text(
                        "Welcome",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.seaweedScript(
                            color: Color(0xffE9B95D),
                            fontSize: 50,
                            // height: 1.8,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 28,
                      child: Container(
                        // height: 300,
                        alignment: Alignment.center,
                        child: Text(
                          "Our Story",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              color: blackButtonColor,
                              fontSize: 32,
                              // height: 1.8,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  alignment: Alignment.center,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum augue amet, mi tellus proin ornare quam fermentum neque. Risus amet, commodo eget viverra ornare magna. Non dictumst purus felis ridiculus mi scelerisque mauris nisl, dui.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: tempOneGray,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CommonSlider(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  // margin: const EdgeInsets.only(right: 20),
                  height: 350,
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: controllerTwo,
                      onPageChanged: (page) {
                        setState(() {
                          activePageTwo = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        return SliderCard(images: images[pagePosition]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: indicatorsTwo(images.length, activePageTwo),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {
                          controllerTwo.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: blackButtonColor,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
