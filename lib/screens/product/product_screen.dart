import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/product/add_product_screen.dart';
import 'package:emagz_vendor/screens/product/view_product.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import 'widgets/product_desc_headings.dart';
import 'widgets/product_list_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String url =
      "https://images.unsplash.com/photo-1563291589-4e9a1757428d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9sbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  String url2 =
      "https://images.unsplash.com/photo-1602734846297-9299fc2d4703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  String url3 =
      "https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGVhZHBob25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const commonTopBar(
                title: 'Product',
              ),
              const SearchContainer(),
              const Text(
                "Top Product",
                style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(backgroundImage: NetworkImage(url)),
                    CircleAvatar(backgroundImage: NetworkImage(url2)),
                    CircleAvatar(backgroundImage: NetworkImage(url)),
                    CircleAvatar(backgroundImage: NetworkImage(url2)),
                    CircleAvatar(backgroundImage: NetworkImage(url)),
                    CircleAvatar(backgroundImage: NetworkImage(url2)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Product List",
                    style:
                        TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: blackButtonColor.withOpacity(.2),
                              // spreadRadius: 2,
                              blurRadius: 10)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 2),
                      child: Row(
                        children: [
                          const Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            "assets/svg/Filter.svg",
                            width: 28,
                            color: blackButtonColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const ProductDiscHeading(),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Get.to(() => const ViewProductScreen());
                          },
                          child: ProductListCard(url3: url3));
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 28),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width / 2.4,
              alignment: Alignment.center,
              height: 45,
              decoration: BoxDecoration(
                  color: blackButtonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Manage Product",
                style: TextStyle(color: whiteColor),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const AddProductScreen());
              },
              child: Container(
                width: size.width / 2.4,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Add Product",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
