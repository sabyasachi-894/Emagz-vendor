import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:emagz_vendor/user/screens/order/widgets/details_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/product_model.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Icon(
              Icons.arrow_back_ios,
              color: blackButtonColor,
              size: 18,
            ),
          ),
        ),
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "  Order Details",
          style: TextStyle(fontSize: 18, color: blackButtonColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                margin: const EdgeInsets.symmetric(horizontal: 12),
                height: 105,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: orderDetailBorder),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Order Date",
                        ),
                        DetailsText(
                          title: "06-Sep-2022",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Order ID",
                        ),
                        DetailsText(
                          title: "#256826",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Order Total",
                        ),
                        DetailsText(
                          title: "₹4,500 ( 1 Item )",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 10, left: 15, right: 15, bottom: 8),
                child: Text(
                  "Shipment Details",
                  style: TextStyle(fontSize: 16, color: blackButtonColor),
                ),
              ),
              Container(
                height: 1.5,
                color: orderDetailBorder,
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivered",
                          style:
                              TextStyle(fontSize: 18, color: blackButtonColor),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Delivered Estimated :",
                              style:
                                  TextStyle(fontSize: 10, color: signInHeading),
                            ),
                            Text(
                              " Sunday, 15th Sep 2022",
                              style: TextStyle(
                                  fontSize: 10, color: orderDetailsGreen),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: signInHeading, width: .3)),
                      child: Text(
                        "View Product",
                        style: TextStyle(fontSize: 10, color: blackButtonColor),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: 135,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: orderDetailBorder),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Image.network(
                      imageList[2],
                      // width: size.width / 3.5,
                      width: 100,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 129,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Men’s Formal \nBlue Shirt",
                            style: TextStyle(
                                fontSize: 18, color: blackButtonColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 83,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Qty : 1",
                                  style: TextStyle(
                                      fontSize: 11, color: signInHeading),
                                ),
                                Text(
                                  "Size : M",
                                  style: TextStyle(
                                      fontSize: 11, color: signInHeading),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sold by: MAVfashion ",
                            style:
                                TextStyle(fontSize: 11, color: signInHeading),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const DetailsText(
                      title: "₹4,500.00",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 1.5,
                color: orderDetailBorder,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 10, left: 15, right: 15, bottom: 8),
                child: Text(
                  "Payment Information",
                  style: TextStyle(fontSize: 16, color: blackButtonColor),
                ),
              ),
              Container(
                height: 1.5,
                color: orderDetailBorder,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 15, left: 25, right: 10, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment method",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Visa ending in 0024",
                      style: TextStyle(fontSize: 12, color: signInHeading),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Billing Address",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "2118 Thornridge Cir. Syracuse, Connecticut 35624",
                      style: TextStyle(fontSize: 14, color: signInHeading),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Shipping Address",
                      style: TextStyle(
                          fontSize: 14,
                          color: blackButtonColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "2118 Thornridge Cir. Syracuse, Connecticut 35624",
                      style: TextStyle(fontSize: 14, color: signInHeading),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1.5,
                color: orderDetailBorder,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 10, left: 15, right: 15, bottom: 10),
                child: Text(
                  "Order Summary",
                  style: TextStyle(fontSize: 16, color: blackButtonColor),
                ),
              ),
              Container(
                height: 1.5,
                color: orderDetailBorder,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Items:",
                        ),
                        DetailsText(
                          title: "₹4,500.00",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Total before tax",
                        ),
                        DetailsText(
                          title: "₹4,500.00",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Tax",
                        ),
                        DetailsText(
                          title: "₹250.00",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailsText(
                          title: "Discount",
                        ),
                        DetailsText(
                          title: "₹00.00",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        color: inVoiceBlue,
        child: Text(
          "Download Invoice",
          style: TextStyle(fontSize: 14, color: whiteColor),
        ),
      ),
    );
  }
}
