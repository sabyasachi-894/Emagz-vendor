import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/order/widgets/order_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWishListScreen extends StatelessWidget {
  const EmptyWishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const UserTopBar(title: "Wishlist"),
      body: Column(
        children: [
          SizedBox(
            height: size.height / 8,
          ),
          Image.asset(
            "assets/png/Fav.png",
            height: size.height / 3.5,
            fit: BoxFit.cover,
            // width: 362,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Save Your Favorite Here",
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "We save all your wish safely for later",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {
              // Get.to(() => const OrderScreen());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
