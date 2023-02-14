import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/model/payment_list_model.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/orders/widgets/order_list_card.dart';
import 'package:emagz_vendor/screens/orders/widgets/order_list_heading.dart';
import 'package:emagz_vendor/screens/payment/widgets/payment_heading.dart';
import 'package:emagz_vendor/screens/payment/widgets/payment_list_card.dart';
import 'package:emagz_vendor/screens/product/view_product.dart';
import 'package:emagz_vendor/screens/product/widgets/product_desc_headings.dart';
import 'package:emagz_vendor/screens/product/widgets/product_list_card.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../model/order_list_model.dart';

class PaymentListScreen extends StatefulWidget {
  const PaymentListScreen({Key? key}) : super(key: key);

  @override
  State<PaymentListScreen> createState() => _PaymentListScreenState();
}

class _PaymentListScreenState extends State<PaymentListScreen> {
  String url =
      "https://images.unsplash.com/photo-1563291589-4e9a1757428d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9sbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  int value = 0;
  List data = [" All ", "Recived", "Sent    "];
  List<PaymentList> paymentList = [
    PaymentList("5415asd518", "Rec Payment", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Payment Sent", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Rec Payment", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Payment Sent", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Rec Payment", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Payment Sent", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Rec Payment", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Payment Sent", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Rec Payment", 599.99, "22 -01 -2021"),
    PaymentList("5415asd518", "Payment Sent", 599.99, "22 -01 -2021"),
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
                title: 'payment',
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
                    "Payment",
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
              const PaymentHeading(),
              Expanded(
                child: ListView.builder(
                    itemCount: paymentList.length,
                    itemBuilder: (context, index) {
                      return PaymentListCard(paymentList: paymentList[index]);
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
