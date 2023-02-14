import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/constant/strings.dart' as text;
import 'package:emagz_vendor/templates/common/appbar/common_appbar.dart';
import 'package:emagz_vendor/templates/widgets/common_slider.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/fav_and_locate_widget.dart';
import '../widgets/temp_four_product_card.dart';

class TemplateFourScreen extends StatefulWidget {
  const TemplateFourScreen({Key? key}) : super(key: key);

  @override
  State<TemplateFourScreen> createState() => _TemplateFourScreenState();
}

class _TemplateFourScreenState extends State<TemplateFourScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        // appBar: TempleteAppBar(
        //   title: "",
        //   // isBlack: false,
        // ),
        body: ListView(
          shrinkWrap: true,
          children: [
            TempleteAppBar(
              title: "",
              // isBlack: false,
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
                    style: GoogleFonts.josefinSans(
                        color: whiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 306,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, maecenas vestibulum amet, cursus platea fringilla viverra laoreet lacus. Lorem lobortis tellus pretium, amet auctor ultricies non. Non praesent risus massa et morbi. ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FavouriteAndLocateWidget(
                    isWhite: true,
                  ),
                ],
              ),
            ),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageUrlFour), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "About",
                textAlign: TextAlign.start,
                style: GoogleFonts.judson(
                    color: blackButtonColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                text.dummyText,
                textAlign: TextAlign.justify,
                style: GoogleFonts.inter(
                    color: blackButtonColor,
                    fontSize: 14.7,
                    height: 1.5,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                text.dummyText,
                textAlign: TextAlign.justify,
                style: GoogleFonts.inter(
                    color: blackButtonColor,
                    fontSize: 14.7,
                    height: 1.5,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Product",
                textAlign: TextAlign.center,
                style: GoogleFonts.italiana(
                    color: blackButtonColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
            ),
            TemplateFourproductCard(
              imgUrl: shoeOne,
            ),
            TemplateFourproductCard(
              imgUrl: shoeTwo,
            ),
            const SizedBox(
              height: 10,
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
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 180, child: CommonSlider()),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Trending Product",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: blackButtonColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
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
                            height: 120,
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
                        viewportFraction: .41,
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
                    width: 6.0,
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
          ],
        ),
      ),
    );
  }
}
