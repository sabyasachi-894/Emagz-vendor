import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/orders/order_list_screen.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/bag/widget/empty_bag_gridview.dart';
import 'package:emagz_vendor/user/screens/order/order_scree.dart';
import 'package:emagz_vendor/user/screens/order/widgets/order_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmptyBagScreen extends StatelessWidget {
  const EmptyBagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const UserTopBar(title: "Bag"),
      body: Column(
        children: [
          SizedBox(
            height: size.height / 8,
          ),
          InkWell(
            onTap: () {
              Get.to(() => OrderScreen());
            },
            child: Image.asset(
              "assets/png/Cart.png",
              height: size.height / 6,
              fit: BoxFit.cover,
              // width: 362,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Please Fill Me",
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "It looks like your have not shop anything \nyet",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products For You",
                  style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "View More",
                  style: TextStyle(
                      color: Color(0xff292929),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: EmptyBagGridView()),
        ],
      ),
    );
  }
}
