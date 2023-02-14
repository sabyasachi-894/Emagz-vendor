import 'package:emagz_vendor/screens/choise/e_business_screen.dart';
import 'package:emagz_vendor/screens/orders/order_list_screen.dart';
import 'package:emagz_vendor/screens/payment/payment_list_screen.dart';
import 'package:emagz_vendor/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../coupon/coupon_screen.dart';

class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: myGradient),
                  child: Image.asset(
                    "assets/png/logo.png",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const EbusinessScreen());
                  },
                  child: Image.asset(
                    "assets/png/menu.png",
                    height: 22,
                    width: 22,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  "assets/svg/Home.svg",
                  width: 45,
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const ProductScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/svg/Product.svg",
                    width: 45,
                    height: 50,
                    color: grayColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const OrderListScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/svg/Packege.svg",
                    width: 45,
                    height: 50,
                    color: grayColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const CouponListScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/svg/Coupan.svg",
                    width: 45,
                    height: 50,
                    color: grayColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const PaymentListScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/svg/Pay.svg",
                    width: 45,
                    height: 50,
                    color: grayColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SvgPicture.asset(
        "assets/svg/Exit.svg",
        width: 45,
        height: 50,
      ),
    );
  }
}
