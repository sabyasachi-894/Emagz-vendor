import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/model/payment_list_model.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/coupon/add_coupon.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_haeding.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_list_card.dart';
import 'package:emagz_vendor/screens/coupon/widgets/my_coupon.dart';
import 'package:emagz_vendor/screens/payment/widgets/payment_list_card.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../model/order_list_model.dart';

class CouponListScreen extends StatefulWidget {
  const CouponListScreen({Key? key}) : super(key: key);

  @override
  State<CouponListScreen> createState() => _CouponListScreenState();
}

class _CouponListScreenState extends State<CouponListScreen> {
  String url =
      "https://images.unsplash.com/photo-1563291589-4e9a1757428d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9sbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  int value = 0;
  List data = [" All ", "Recived", "Sent    "];
  List<OrderList> ordrList = [
    OrderList("DJBHAH5", "Sony Headset", 02, 599.99, "Ongoing"),
    OrderList("DJBHAH5", "Sony Headset", 01, 599.99, "Ongoing"),
    OrderList("DJBHAH5", "Sony Headset", 04, 599.99, "Expired"),
    OrderList("DJBHAH5", "Sony Headset", 08, 499.34, "Ongoing"),
  ];
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
                title: 'Coupon',
              ),
              const SearchContainer(),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Ongoing Coupons",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(right: 10),
                          child: MyCustomCuppon());
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Coupon List",
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
                          horizontal: 18, vertical: 2),
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
              const CouponHeading(),
              Expanded(
                child: ListView.builder(
                    itemCount: ordrList.length,
                    itemBuilder: (context, index) {
                      return CouponListCard(orderList: ordrList[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        margin: EdgeInsets.only(bottom: 10, right: 20),
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(
                  // width: size.width / 2.15,
                  ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const AddCouponScreen());
              },
              child: Container(
                width: size.width / 2.4,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Add New Coupon",
                  style: TextStyle(color: whiteColor, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
