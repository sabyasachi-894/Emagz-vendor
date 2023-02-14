import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/model/order_list_model.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_heading.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_textField.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_haeding.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_list_card.dart';
import 'package:emagz_vendor/screens/coupon/widgets/my_coupon.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  var _selectedIssue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const commonTopBar(
                  title: 'Support',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We are here to help you",
                  style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const AddCouponHeadingText(
                  headings: "Name",
                ),
                AddCouponTextfiled(),
                const AddCouponHeadingText(
                  headings: "E-mail/ Phone No.",
                ),
                AddCouponTextfiled(),
                const AddCouponHeadingText(
                  headings: " Please Select Your Issue",
                ),
                Row(
                  children: [
                    Expanded(
                      child: myCustomRadio(
                        "Order Issue",
                      ),
                    ),
                    Expanded(
                      child: myCustomRadio(
                        "Wrong Delivery",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: myCustomRadio(
                        "Delivery Issue",
                      ),
                    ),
                    Expanded(
                      child: myCustomRadio(
                        "Other Issue",
                      ),
                    ),
                  ],
                ),
                myCustomRadio(
                  "Website Issue",
                ),
                myCustomRadio(
                  "Customer",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 120,
                        decoration: BoxDecoration(color: lightgrayColor),
                        child: AddCouponHeadingText(headings: "Upload Image"),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 120,
                        decoration: BoxDecoration(color: lightgrayColor),
                        child: AddCouponHeadingText(headings: "Upload Image"),
                      ),
                    ),
                  ],
                ),
                const AddCouponHeadingText(
                  headings: "Message",
                ),
                AddCouponTextfiled(
                  maxLines: 5,
                ),
              ],
            ),
          ),
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
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Back",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Get.to(() => const AddProductScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Submit",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myCustomRadio(String value) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      height: 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio(
              value: value,
              groupValue: _selectedIssue,
              onChanged: (value) {
                setState(() {
                  _selectedIssue = value;
                });
              }),
          AddCouponHeadingText(headings: value)
        ],
      ),
    );
  }
}
