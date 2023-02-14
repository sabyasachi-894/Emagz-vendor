import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/cs/crousel_slider.dart';
import 'package:emagz_vendor/templates/widgets/fav_and_locate_widget.dart';
import 'package:emagz_vendor/templates/widgets/temp_one_sliderCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../social_media/screens/explore/explpre_screen.dart';
import '../../user/models/product_model.dart';
import '../common/appbar/common_appbar.dart';
import '../widgets/common_slider.dart';
import '../widgets/temp_two_big_slider.dart';

class TemplateThree extends StatefulWidget {
  const TemplateThree({Key? key}) : super(key: key);

  @override
  State<TemplateThree> createState() => _TemplateThreeState();
}

class _TemplateThreeState extends State<TemplateThree> {
  // int activePage = 0;

  static const pattern = [
    QuiltedGridTile(1, 2),
    QuiltedGridTile(2, 2),
    QuiltedGridTile(1, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        // extendBodyBehindAppBar: true,
        // appBar: TempleteAppBar(
        //   title: "",
        //   // isBlack: false,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TempleteAppBar(
                title: "",
                // isBlack: false,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "create\nyour own\nstyle",
                textAlign: TextAlign.center,
                style: GoogleFonts.italiana(
                    color: const Color(0xff262626),
                    fontSize: 64,
                    height: 1,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              FavouriteAndLocateWidget(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: Get.size.width / 5,
                        ),
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          image: DecorationImage(
                            image: NetworkImage(
                              products[3].image.toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: -6,
                        child: Container(
                          height: 250,
                          width: Get.size.width / 2,
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
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Our Story",
                textAlign: TextAlign.center,
                style: GoogleFonts.italiana(
                    color: const Color(0xff262626),
                    fontSize: 48,
                    height: 1,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, maecenas vestibulum amet, cursus platea fringilla viverra laoreet lacus. Lorem lobortis tellus pretium, amet auctor ultricies non. Non praesent risus massa et morbi. ",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.inter(
                      color: const Color(0xff454545),
                      fontSize: 14.5,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrlTwo), fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrlThree), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, maecenas vestibulum amet, cursus platea fringilla viverra laoreet lacus. Lorem lobortis tellus pretium, amet auctor ultricies non. Non praesent risus massa et morbi. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Risus, maecenas vestibulum amet, cursus platea fringilla viverra laoreet lacus. Lorem lobortis tellus pretium, amet auctor ultricies non. Non praesent risus massa et morbi. ",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.inter(
                      color: const Color(0xff454545),
                      fontSize: 14.7,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Product",
                textAlign: TextAlign.center,
                style: GoogleFonts.italiana(
                    color: blackButtonColor,
                    fontSize: 35,
                    height: 1,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              CarouselSlider.builder(
                itemCount: dressList.length,
                itemBuilder: (context, index, currentPage) {
                  return Container(
                    // alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    // height: 500,
                    // width: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            dressList[index].image.toString(),
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Text(
                          "Product",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$25.00",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 18,
                              height: .9,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Add to\ncart",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 10,
                                    height: .9,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: .7,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  disableCenter: true,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CommonSlider(),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Gallery",
                textAlign: TextAlign.center,
                style: GoogleFonts.italiana(
                    color: blackButtonColor,
                    fontSize: 32,
                    height: 1,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.custom(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // cacheExtent: 10,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 4,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: pattern),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: imageList.length,
                  (context, index) {
                    // final tile = pattern[index % pattern.length];
                    final tile = pattern[index % pattern.length];

                    return SizedBox(
                      // width: tile.crossAxisCount * 100,
                      // height: tile.mainAxisCount * 100,
                      child: Image.network(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
