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

class TemplateTenScreen extends StatefulWidget {
  const TemplateTenScreen({Key? key}) : super(key: key);

  @override
  State<TemplateTenScreen> createState() => _TemplateTenScreenState();
}

class _TemplateTenScreenState extends State<TemplateTenScreen> {
  // final controller = PageController(initialPage: 0);
  CarouselController controller = CarouselController();
  CarouselController controllerTwo = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackButtonColor,
      extendBodyBehindAppBar: true,
      // appBar: TempleteAppBar(
      //   title: "",
      //   isBlack: false,
      // ),
      body: ListView(
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          TempleteAppBar(
        title: "",
        isBlack: false,
      ),
          SizedBox(
            height: Get.size.height * .02,
          ),
          // Container(
          //   height: 300,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: NetworkImage(foodImage[0].toString()),
          //           fit: BoxFit.cover)),
          // ),
          SizedBox(
            height: Get.size.height * .05,
          ),
          Text(
            "Design that\nsimplfy\nStyle ",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                color: whiteColor, fontSize: 40, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            // alignment: Alignment.center,
            height: 250,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                // alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 85,
                    backgroundImage: NetworkImage(products[0].image.toString()),
                  ),
                  Positioned(
                    left: 90,
                    top: 75,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: blackButtonColor,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage:
                            NetworkImage(products[2].image.toString()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 50,
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
                          image: NetworkImage(foodImage[1].toString()),
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
                          image: NetworkImage(foodImage[2].toString()),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Product",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.nunito(
                      color: whiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  color: whiteColor.withOpacity(.2),
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: tempStarColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: tempStarColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: tempStarColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: grayColor,
                      size: 12,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  dummyText,
                  style: TextStyle(
                      color: grayColor,
                      fontSize: 10,
                      height: 2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$ 25.00",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 22,
                              // height: 2,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 35.00 ",
                              style: TextStyle(
                                  color: cancledColor,
                                  fontSize: 12,
                                  // height: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ 25.00",
                              style: TextStyle(
                                  color: orderDetailsGreen,
                                  fontSize: 12,
                                  // height: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      decoration:
                          BoxDecoration(border: Border.all(color: grayColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: whiteColor,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add to Bag",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 14,
                                // height: 2,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          const SizedBox(
            height: 35,
          ),
          Text(
            "Our Products",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                color: whiteColor, fontSize: 35, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),

          CarouselSlider.builder(
              carouselController: controllerTwo,
              itemCount: products.length,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 280,
                      // width: 200,
                      child: Image.network(
                        products[index].image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 12,
                      child: Container(
                        height: 170,
                        width: 180,
                        padding:
                            const EdgeInsets.only(top: 8, right: 15, left: 15),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                  height: 380, viewportFraction: .55, enlargeCenterPage: true)),
          const CommonSlider(),

          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              dummyText,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: whiteColor,
                fontSize: 16,
                height: 1.8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
