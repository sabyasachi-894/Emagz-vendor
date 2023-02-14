import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/templates/common/appbar/common_appbar.dart';
import 'package:emagz_vendor/templates/widgets/common_slider.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/fav_and_locate_widget.dart';
import '../widgets/temp_two_big_slider.dart';

class TemplateTwoScreen extends StatefulWidget {
  const TemplateTwoScreen({Key? key}) : super(key: key);

  @override
  State<TemplateTwoScreen> createState() => _TemplateTwoScreenState();
}

class _TemplateTwoScreenState extends State<TemplateTwoScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
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
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrlOne), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Store Name",
                    style: GoogleFonts.inter(
                        color: whiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 306,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum augue amet,",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: templeteTwo,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create your own style",
                          style: GoogleFonts.inter(
                              color: blackButtonColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 320,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh luctus fermentum ipsum malesuada interdum.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                color: blackButtonColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Get your style",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: blackButtonColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc malesuada volutpat mollis aenean. Vitae in diam neque.",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: blackButtonColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "01",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "02",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "260",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: blackButtonColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
             FavouriteAndLocateWidget(),
            SizedBox(
              height: 320,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(products[0].image.toString()),
                    backgroundColor: whiteColor,
                    radius: 150,
                  ),
                  Positioned(
                    top: 80,
                    child: Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(color: whiteColor, width: 7),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100)),
                          image: DecorationImage(
                              image: NetworkImage(imageUrlOne),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Trending Product",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    _controller.previousPage();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                ),
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: products.length,
                    carouselController: _controller,
                    itemBuilder: (context, index, realIndex) {
                      return Column(
                        children: [
                          Container(
                            height: 140,
                            // width: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      products[index].image.toString()),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 40,
                            color: blackButtonColor.withOpacity(.6),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product Name",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 10.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
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
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "\$25",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    options: CarouselOptions(
                        viewportFraction: .45,
                        enlargeCenterPage: true,
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
                const SizedBox(
                  width: 3,
                ),
                InkWell(
                  onTap: () {
                    _controller.nextPage();
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: products.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.3)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductBigSlider(
                      imgUrl: products[index].image.toString(),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            const CommonSlider(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum augue amet, mi tellus proin ornare quam fermentum neque. Risus amet, commodo eget viverra ornare magna. Non dictumst purus felis ridiculus mi scelerisque mauris nisl, dui.",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: Color(0xff424242),
                    fontSize: 14,
                    // height: 1.8,
                    letterSpacing: .2,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
