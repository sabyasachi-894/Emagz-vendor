import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/auth/widgets/form_haeding_text.dart';
import 'package:emagz_vendor/screens/auth/widgets/my_custom_textfiled.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/coupon/manage_coupon.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_heading.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_textField.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_haeding.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCouponScreen extends StatefulWidget {
  const AddCouponScreen({Key? key}) : super(key: key);

  @override
  State<AddCouponScreen> createState() => _AddCouponScreenState();
}

class _AddCouponScreenState extends State<AddCouponScreen> {
  int _selectedColor = 0;

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
                  title: 'Coupon',
                ),
                const SearchContainer(),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Add New",
                  style: TextStyle(
                      fontSize: 16.5,
                      fontWeight: FontWeight.w600,
                      color: orderHeadingColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Coupon Code",
                          ),
                          AddCouponTextfiled()
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Coupon Value",
                          ),
                          AddCouponTextfiled()
                        ],
                      ),
                    ),
                  ],
                ),
                const AddCouponHeadingText(
                  headings: "Select Category",
                ),
                AddCouponTextfiled(),
                const AddCouponHeadingText(
                  headings: "Select Sub Category",
                ),
                AddCouponTextfiled(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Discount Type",
                          ),
                          AddCouponTextfiled()
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Max User",
                          ),
                          AddCouponTextfiled()
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Starts From",
                          ),
                          AddCouponTextfiled(
                            hint: " DD/MM/YY",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddCouponHeadingText(
                            headings: "Ends On",
                          ),
                          AddCouponTextfiled(
                            hint: " DD/MM/YY",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const AddCouponHeadingText(
                  headings: "Color",
                ),
                _colorPallete()
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
                Get.to(() => const ManageCouponScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Add New Coupon",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _colorPallete() {
    return Wrap(
      children: List.generate(
        4,
        (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedColor = index;
                //print(_selectedColor);
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    gradient: index == 0
                        ? myGradient
                        : index == 1
                            ? orangeGradient
                            : index == 2
                                ? redGradient
                                : greenGradient,
                    shape: BoxShape.circle),
                child: _selectedColor == index
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 18,
                      )
                    : Container(),
              ),
            ),
          );
        },
      ),
    );
  }
}
