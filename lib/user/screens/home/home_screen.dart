import 'package:carousel_slider/carousel_slider.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/home/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class HomeScren extends StatelessWidget {
  HomeScren({Key? key}) : super(key: key);

  String imageUrl =
      "https://images.unsplash.com/photo-1647221598398-934ed5cb0e4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2hvcHBpbmclMjBpbWFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UserTopBar(title: "eMarket"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 11,
                // height: 1.2,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: ListView.builder(
                  itemCount: products.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              products[index].image.toString(),
                            ),
                            radius: 20,
                          ),
                          Text(
                            products[index].category.toString(),
                            style: TextStyle(
                                color: blackButtonColor,
                                fontSize: 9,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 72,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Arrivals",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.network(
                            products[index].image.toString(),
                            fit: BoxFit.cover,
                            width: 67,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fashion",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "View More",
                    style: TextStyle(
                        color: Color(0xff292929),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductGridView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 5,
                              crossAxisCount: 2,
                              mainAxisSpacing: 2,
                              childAspectRatio: 1 / 1.4),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 72,
                              width: 106,
                              child: Image.network(
                                products[index].image.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Product",
                              style: TextStyle(
                                  color: blackButtonColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "₹ ${products[index].price.toString()}",
                              style: TextStyle(
                                  color: blackButtonColor,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1609017604163-e4ca9c619b9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG9mZmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            CarouselSlider.builder(
              itemCount: products.length,
              itemBuilder: (context, index, count) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            products[index].image.toString(),
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                );
              },
              options: CarouselOptions(
                height: 120,
                aspectRatio: 16 / 9,
                viewportFraction: 0.5,
                initialPage: 1,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Products",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "View More",
                    style: TextStyle(
                        color: Color(0xff292929),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1 / 1.7),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 103,
                      width: 106,
                      child: Image.network(
                        products[index].image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Product",
                      style: TextStyle(
                          color: blackButtonColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "₹ ${products[index].price.toString()}",
                      style: TextStyle(
                          color: blackButtonColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
