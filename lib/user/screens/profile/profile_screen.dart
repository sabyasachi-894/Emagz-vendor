import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/coupon/coupon_screen.dart';
import 'package:emagz_vendor/screens/coupon/widgets/add_coupon_heading.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/address/add_address.dart';
import 'package:emagz_vendor/user/screens/address/my_save_address.dart';
import 'package:emagz_vendor/user/screens/order/empty_order_screen.dart';
import 'package:emagz_vendor/user/screens/profile/widgets/profile_menu_card.dart';
import 'package:emagz_vendor/user/screens/ratings/rating_screen.dart';
import 'package:emagz_vendor/user/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../coupon/coupon_screen.dart';

class ProfileScreenUser extends StatefulWidget {
  ProfileScreenUser({Key? key}) : super(key: key);

  @override
  State<ProfileScreenUser> createState() => _ProfileScreenUserState();
}

class _ProfileScreenUserState extends State<ProfileScreenUser> {
  var _selectedGender;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const UserTopBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    backgroundImage: NetworkImage(products[1].image.toString()),
                    radius: 35,
                  ),
                  SizedBox(
                    width: size.width / 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 35,
                        width: 170,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(color: profileGray),
                        child: Text(
                          "Maya Jonson",
                          style: TextStyle(
                            fontSize: 10,
                            wordSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: blackButtonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * .05,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 37,
                        width: 170,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(color: profileGray),
                        child: Text(
                          "201 202 021 2014",
                          style: TextStyle(
                            fontSize: 10,
                            wordSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: blackButtonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Gender",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          myCustomRadio(
                            "Male",
                          ),
                          myCustomRadio("Female"),
                        ],
                      ),
                      myCustomRadio("Not prefer to say"),
                    ],
                  )
                ],
              ),
              Text(
                "E-mail ID",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                height: 30,
                // width: 170,
                alignment: Alignment.center,
                // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(color: profileGray),
                child: Text(
                  "Maya Jonsons @gmail.com",
                  style: TextStyle(
                    fontSize: 10,
                    wordSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: blackButtonColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => const OrderScreen());
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  alignment: Alignment.center,
                  height: 45,
                  decoration: BoxDecoration(
                      color: blueButtonColor,
                      borderRadius: BorderRadius.circular(1)),
                  child: Text(
                    "Update Profile",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => EmptyOrderScreen());
                      },
                      child: ProfileMenuCard(
                        backGroundImage: "assets/png/order_back.png",
                        icon: SvgPicture.asset(
                          "assets/svg/Packege.svg",
                          height: 25,
                          width: 20,
                        ),
                        title: " My Order",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => CouponScreen());
                      },
                      child: ProfileMenuCard(
                        backGroundImage: "assets/png/coupon_back.png",
                        icon: SvgPicture.asset(
                          "assets/svg/Coupan.svg",
                          height: 25,
                          width: 20,
                        ),
                        // icon: "assets/svg/Coupan.svg",
                        title: " My Coupans",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => WishListScreen());
                      },
                      child: ProfileMenuCard(
                        backGroundImage: "assets/png/wishlist_back.png",
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: SvgPicture.asset(
                            "assets/svg/Heart.svg",
                            height: 15,
                            width: 20,
                          ),
                        ),
                        title: "Wishlist",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ProfileMenuCard(
                      backGroundImage: "assets/png/payment_back.png",
                      icon: SvgPicture.asset(
                        "assets/svg/Pay.svg",
                        height: 25,
                        width: 20,
                      ),
                      // icon: "assets/svg/Pay.svg",
                      title: "Payment",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => MySaveAddressScreen());
                      },
                      child: ProfileMenuCard(
                        backGroundImage: "assets/png/address_back.png",
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: SvgPicture.asset(
                            "assets/svg/MapPin.svg",
                            height: 15,
                            width: 20,
                          ),
                        ),
                        // icon: "assets/svg/MapPin.svg",
                        title: "Manage Address",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => RatingScreen());
                      },
                      child: ProfileMenuCard(
                        backGroundImage: "assets/png/review_back.png",
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: SvgPicture.asset(
                            "assets/svg/star.svg",
                            height: 15,
                            width: 10,
                          ),
                        ),
                        // icon: "assets/svg/star.svg",
                        title: "My Reviews & Rating",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => const OrderScreen());
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  alignment: Alignment.center,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(1)),
                  child: Text(
                    "Log Out",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        alignment: Alignment.center,
        // margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Text("Deactive Account",
            style: TextStyle(color: Color(0xff949494), fontSize: 14)),
      ),
    );
  }

  Widget myCustomRadio(String value) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 1,
      ),
      height: 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 0.5,
            child: Radio(
                activeColor: blackButtonColor,
                value: value,
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                }),
          ),
          Text(
            value,
            style: TextStyle(
                color: blackButtonColor,
                fontSize: 9,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
