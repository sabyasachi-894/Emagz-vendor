import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/bag/bag_screen.dart';
import 'package:emagz_vendor/user/screens/home/widgets/rating_widets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: UserTopBar(title: "Fashion"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 185,
              child: ListView.builder(
                // padding: const EdgeInsets.only(left: 5),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      products[index].image.toString(),
                      fit: BoxFit.cover,
                      width: 130,
                      height: 185,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "White Tank Top",
              style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const RatingWidget(),
            SizedBox(
              height: 5,
            ),
            Text(
              "info",
              style: TextStyle(
                  fontSize: 14,
                  color: blackButtonColor,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aliquam ac ut bibendum hac massa tristique iaculis turpis lacus. Ipsum.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14,
                  color: blackButtonColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Seller ",
                  style: TextStyle(
                      fontSize: 14,
                      color: blackButtonColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Alliance Departures",
                  style: TextStyle(
                      fontSize: 14,
                      color: blueButtonColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Qty",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: blackButtonColor,
                          radius: 15,
                          child: Text(
                            "01",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: blackButtonColor,
                          radius: 15,
                          child: CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 14,
                            child: Text(
                              "02",
                              style: TextStyle(color: blackButtonColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: blackButtonColor,
                          radius: 15,
                          child: CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 14,
                            child: Text(
                              "03",
                              style: TextStyle(color: blackButtonColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: blackButtonColor,
                          radius: 15,
                          child: CircleAvatar(
                              backgroundColor: whiteColor,
                              radius: 14,
                              child: Icon(
                                Icons.add,
                                color: blackButtonColor,
                                size: 15,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "₹ 499.00",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blackButtonColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Add To Cart", style: TextStyle(color: whiteColor)),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() =>  BagScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Buy Now",
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
