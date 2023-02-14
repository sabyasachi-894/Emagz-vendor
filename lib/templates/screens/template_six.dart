import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/constant/strings.dart' as text;
import 'package:emagz_vendor/templates/common/appbar/common_appbar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/fav_and_locate_widget.dart';

class TemplateSixScreen extends StatefulWidget {
  const TemplateSixScreen({Key? key}) : super(key: key);

  @override
  State<TemplateSixScreen> createState() => _TemplateSixScreenState();
}

class _TemplateSixScreenState extends State<TemplateSixScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteAcent,
        extendBodyBehindAppBar: true,
        // appBar: TempleteAppBar(
        //   title: "",
        //   isBlack: false,
        // ),
        body: ListView(
          shrinkWrap: true,
          children: [
            TempleteAppBar(
          title: "",
          isBlack: false,
        ),
            Container(
              // margin: const EdgeInsets.only(top: 20),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(mountainImage), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          color: templeteFiveDivider,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Business Name",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: templeteFiveDivider,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Be adventures",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 38),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      products[index].image.toString(),
                      width: 220,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                text.dummyText,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: blackButtonColor,
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(mountainImage), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                text.dummyText,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: blackButtonColor,
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w300),
              ),
            ),
            FavouriteAndLocateWidget(),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: products.length,
                    carouselController: _controller,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10),
                        // height: 10,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  products[index].image.toString()),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        height: 150,
                        reverse: false,
                        initialPage: 0,
                        viewportFraction: .5,
                        // enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        disableCenter: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: products.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 20,
                      height: 6,
                      margin: const EdgeInsets.symmetric(horizontal: 1.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.3)),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    color: blackButtonColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Our Products",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sahitya(
                      color: blackButtonColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 2,
                    color: blackButtonColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 220,
                      width: Get.size.width / 1.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              products[index].image.toString(),
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Product.1",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sahitya(
                                color: whiteColor,
                                height: .1,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$25",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.sahitya(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: whiteColor,
                                size: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      products[5].image.toString(),
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 24, left: 50, bottom: 15),
                    child: Text(
                      "Reach us",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.sahitya(
                          color: whiteColor,
                          // height: .1,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    height: 180,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin:
                        EdgeInsets.symmetric(horizontal: Get.size.width / 5),
                    height: 150,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Contact us",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  color: blackButtonColor,
                                  // height: .1,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra eget ultrices amet sit semper sed. Laoreet urna, a commodo malesuada hendrerit egestas consequat",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: blackButtonColor,
                              // height: .1,
                              fontWeight: FontWeight.w300,
                              fontSize: 7),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Contact us",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: blackButtonColor,
                              // height: .1,
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "+080 2252225 22522",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: blackButtonColor,
                              // height: .1,
                              fontWeight: FontWeight.w400,
                              fontSize: 9),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "+080 2252225 22522",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: blackButtonColor,
                              // height: .1,
                              fontWeight: FontWeight.w400,
                              fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
