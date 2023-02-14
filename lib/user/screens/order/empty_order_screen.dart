import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/order/widgets/order_list_card.dart';
import 'package:emagz_vendor/user/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmptyOrderScreen extends StatelessWidget {
  const EmptyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserTopBar(title: "Order"),
      body: Column(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            "assets/png/empty_order.png",
            height: 115,
          ),
          Text(
            "Nothing To Be Shown",
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Let’s get some order for you so you can check me later",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 9.5,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {
              Get.to(() => const WishListScreen());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              alignment: Alignment.center,
              height: 45,
              decoration: BoxDecoration(
                  color: blueButtonColor,
                  borderRadius: BorderRadius.circular(1)),
              child: Text(
                "Continue Shoping",
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
