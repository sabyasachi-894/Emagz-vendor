import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/wishlist/empty_wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const UserTopBar(title: "Wishlist"),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            padding: const EdgeInsets.only(left: 25),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1 / 1.5),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 135,
                    width: 90,
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
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                // Get.back();
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blackButtonColor,
                    borderRadius: BorderRadius.circular(1)),
                child: Text("Manage ", style: TextStyle(color: whiteColor)),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const EmptyWishListScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(1)),
                child: Text(
                  "Order Now",
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
