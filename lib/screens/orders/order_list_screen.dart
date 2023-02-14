import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/common/filter_dailog.dart';
import 'package:emagz_vendor/screens/orders/view_order.dart';
import 'package:emagz_vendor/screens/orders/widgets/order_list_card.dart';
import 'package:emagz_vendor/screens/orders/widgets/order_list_heading.dart';
import 'package:emagz_vendor/screens/product/view_product.dart';
import 'package:emagz_vendor/screens/product/widgets/product_desc_headings.dart';
import 'package:emagz_vendor/screens/product/widgets/product_list_card.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../model/order_list_model.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  String url =
      "https://images.unsplash.com/photo-1563291589-4e9a1757428d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9sbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  int value = 0;
  List data = [" All ", "Recent", "Pending", "Cancled", "Delivery"];
  List<OrderList> ordrList = [
    OrderList("5415asd518", "Sony Headset", 02, 599.99, "Pending"),
    OrderList("5415asd518", "Sony Headset", 01, 599.99, "Delivered"),
    OrderList("5415asd518", "Sony Headset", 04, 599.99, "Cancled"),
    OrderList("5415asd518", "Sony Headset", 08, 499.34, "Pending"),
    OrderList("5415asd518", "Sony Headset", 09, 123.99, "Dispatch"),
    OrderList("5415asd518", "Sony Headset", 05, 200.55, "Pending"),
    OrderList("5415asd518", "Sony Headset", 02, 599.99, "Pending"),
    OrderList("5415asd518", "Sony Headset", 01, 599.99, "Delivered"),
    OrderList("5415asd518", "Sony Headset", 04, 599.99, "Cancled"),
    OrderList("5415asd518", "Sony Headset", 08, 499.34, "Pending"),
    OrderList("5415asd518", "Sony Headset", 09, 123.99, "Dispatch"),
    OrderList("5415asd518", "Sony Headset", 05, 200.55, "Pending"),
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
                title: 'Order',
              ),
              const SearchContainer(),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    return customRadioButton(data[index], index);
                  }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Order List",
                    style:
                        TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      filterDalilog(context);
                    },
                    child: Container(
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
                  ),
                ],
              ),
              const OrderHeading(),
              Expanded(
                child: ListView.builder(
                    itemCount: ordrList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Get.to(() => const ViewOrderScreen());
                          },
                          child: OrderListCard(orderList: ordrList[index]));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customRadioButton(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        // height: 30,
        decoration: BoxDecoration(
            gradient: (value == index)
                ? const LinearGradient(
                    begin: Alignment(-0.5, .1),
                    end: Alignment(0.1, -3.1),
                    colors: [
                      Color(0xff0F0AA4),
                      Color(0xff2992E3),
                    ],
                  )
                : LinearGradient(
                    colors: [blackButtonColor, blackButtonColor],
                  ),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(color: whiteColor, fontSize: 12),
        ),
      ),
    );
  }
}
