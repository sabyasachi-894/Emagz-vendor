import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/templates/widgets/common_slider.dart';
import 'package:emagz_vendor/templates/widgets/fav_and_locate_widget.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/appbar/common_appbar.dart';
import '../widgets/temp_one_sliderCard.dart';

class TemplateSevenScreen extends StatefulWidget {
  const TemplateSevenScreen({Key? key}) : super(key: key);

  @override
  State<TemplateSevenScreen> createState() => _TemplateSevenScreenState();
}

class _TemplateSevenScreenState extends State<TemplateSevenScreen> {
  final controller = PageController(initialPage: 0);
  final controllerTwo = PageController(initialPage: 0, viewportFraction: .85);

  int activePageTwo = 0;
  List<String> images = [
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549449390-012d06a7d7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          TempleteAppBar(
            title: "",
            isBlack: false,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 650,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(wallImage), fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.size.height / 8,
                ),
                CircleAvatar(
                  radius: Get.size.width / 2.8,
                  backgroundImage: NetworkImage(products[3].image.toString()),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(products[1].image.toString()),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(products[2].image.toString()),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(products[3].image.toString()),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(products[4].image.toString()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Esther Howard",
                  style: GoogleFonts.aBeeZee(
                      color: whiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    dummyText,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        color: whiteColor,
                        fontSize: 13,
                        height: 1.4,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "2500",
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 35,
                          height: .2,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Text(
                          "Happy customers",
                          style: TextStyle(
                            height: .001,
                            color: blackButtonColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "4.2",
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 35,
                          height: .2,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Total Ratings",
                          style: TextStyle(
                            height: .001,
                            color: blackButtonColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "1600",
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 35,
                          height: .2,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Total Sales",
                          style: TextStyle(
                            height: .001,
                            color: blackButtonColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Image.network(
                    products[index].image.toString(),
                    width: 220,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "About",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                color: blackButtonColor,
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              dummyText + dummyText,
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  color: blackButtonColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 55,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: blackButtonColor,
                    border: Border.all(color: blackButtonColor)),
                child: Text(
                  "Favourite",
                  style: GoogleFonts.inter(
                      color: whiteColor,
                      fontSize: 16,
                      // height: 1.4,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 55,
                decoration:
                    BoxDecoration(border: Border.all(color: blackButtonColor)),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: blackButtonColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Locate us",
                      style: GoogleFonts.inter(
                          color: blackButtonColor,
                          fontSize: 16,
                          // height: 1.4,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Our Products",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                color: blackButtonColor,
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 350,
            child: PageView.builder(
                itemCount: products.length,
                pageSnapping: true,
                controller: controllerTwo,
                onPageChanged: (page) {
                  setState(() {
                    activePageTwo = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return SliderCard(
                      images: products[pagePosition].image.toString());
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: indicatorsTwo(products.length, activePageTwo),
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
            height: 30,
          ),
          const CommonSlider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              dummyText + dummyText,
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  color: blackButtonColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
