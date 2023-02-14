import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/cs/crousel_slider.dart';
import 'package:emagz_vendor/templates/widgets/common_slider.dart';
import 'package:emagz_vendor/templates/widgets/fav_and_locate_widget.dart';
import 'package:emagz_vendor/templates/widgets/temp_two_big_slider.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/appbar/common_appbar.dart';
import '../widgets/temp_one_sliderCard.dart';

class TemplateEightScreen extends StatefulWidget {
  const TemplateEightScreen({Key? key}) : super(key: key);

  @override
  State<TemplateEightScreen> createState() => _TemplateEightScreenState();
}

class _TemplateEightScreenState extends State<TemplateEightScreen> {
  // final controller = PageController(initialPage: 0);
  final controllerTwo = PageController(initialPage: 0, viewportFraction: .85);
  CarouselController controller = CarouselController();

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
      // appBar: TempleteAppBar(
      //   title: "",
      //   // isBlack: false,
      // ),
      body: ListView(
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          TempleteAppBar(
            title: "",
            // isBlack: false,
          ),
          SizedBox(
            height: Get.size.height / 7,
          ),
          Text(
            "Esther Howard",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                color: templeteEightHeading,
                fontSize: 28,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              dummyText,
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  color: templeteEightHeading,
                  fontSize: 13,
                  height: 1.4,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    // color: blackButtonColor,
                    border: Border.all(color: templeteEightHeading)),
                child: Text(
                  "Favourite",
                  style: GoogleFonts.inter(
                      color: templeteEightHeading,
                      fontSize: 16,
                      // height: 1.4,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: blackButtonColor)),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
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
                height: 10,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(products[0].image.toString()),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(products[1].image.toString()),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(products[3].image.toString()),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "What we sell",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                color: blackButtonColor,
                fontSize: 30,
                fontWeight: FontWeight.w600),
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
                  color: blackButtonColor,
                  fontSize: 14,
                  height: 1.5,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Our Products",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                color: blackButtonColor,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
              ),
              Expanded(
                child: CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: products.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          SizedBox(
                            // padding: const EdgeInsets.only(left: 20),
                            // width: 300,
                            height: 280,
                            child: Image.network(
                              products[index].image.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 170,
                            left: 12,
                            child: Container(
                              height: 180,
                              width: 200,
                              padding: const EdgeInsets.only(
                                  top: 8, right: 15, left: 15),
                              decoration: BoxDecoration(
                                color: lightgrayColor,
                                border: Border.all(width: 5, color: whiteColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Product 01",
                                    style: GoogleFonts.inter(
                                        color: const Color(0xff424242),
                                        fontSize: 15,
                                        // height: 1.8,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum augue amet, mi tellus proin ornare quam fermentum neque. Risus amet, commodo eget viverra ornare magna. Non dictumst purus felis ridiculus mi scelerisque mauris nisl, dui.",
                                    style: GoogleFonts.inter(
                                        color: const Color(0xff424242),
                                        fontSize: 7,
                                        height: 1.5,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: tempStarColor,
                                        size: 8,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: tempStarColor,
                                        size: 8,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: tempStarColor,
                                        size: 8,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: tempStarColor,
                                        size: 8,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: grayColor,
                                        size: 8,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Add Qty",
                                    style: TextStyle(
                                        color: blackButtonColor,
                                        fontSize: 10,
                                        height: 1.5,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        // crossAxisAlignment: CrossA,
                                        children: [
                                          Text(
                                            "-",
                                            style: TextStyle(
                                                color: blackButtonColor,
                                                fontSize: 15,
                                                height: 1.5,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "01",
                                            style: TextStyle(
                                                color: blackButtonColor,
                                                fontSize: 12,
                                                height: 1.5,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "+",
                                            style: TextStyle(
                                                color: blackButtonColor,
                                                fontSize: 15,
                                                height: 1.5,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: const [
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    options: CarouselOptions(
                        height: 380,
                        viewportFraction: .6,
                        enlargeCenterPage: true)),
              ),
              const SizedBox(
                width: 3,
              ),
              const SizedBox(
                width: 3,
              ),
              InkWell(
                onTap: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
            ],
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
