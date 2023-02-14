import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_heading.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_textField.dart';
import 'package:emagz_vendor/screens/coupon/widgets/coupon_haeding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddCouponHeadingText(
                      headings: "Name",
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
                      headings: "Phone No",
                    ),
                    AddCouponTextfiled(
                      inputType: TextInputType.phone,
                    )
                  ],
                ),
              ),
            ],
          ),
          const AddCouponHeadingText(
            headings: "E-mail",
          ),
          AddCouponTextfiled(),
          const AddCouponHeadingText(
            headings: "Address",
          ),
          AddCouponTextfiled(
            maxLines: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddCouponHeadingText(
                      headings: "City",
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
                      headings: "State",
                    ),
                    AddCouponTextfiled(
                      inputType: TextInputType.phone,
                    )
                  ],
                ),
              ),
            ],
          ),
          const AddCouponHeadingText(
            headings: "Pin Code",
          ),
          AddCouponTextfiled(
              // maxLines: 3,
              ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2.21,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blackButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Customer View",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                // Get.to(() => const ManageCouponScreen());
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2.21,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Edit",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
