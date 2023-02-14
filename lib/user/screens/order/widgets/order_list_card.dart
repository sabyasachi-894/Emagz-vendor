import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';

class OrderListCard extends StatelessWidget {
  const OrderListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: lightgrayColor, width: .7),
          bottom: BorderSide(color: lightgrayColor, width: .7),
        ),
      ),
      child: Row(
        children: [
          Image.network(
            products[5].image.toString(),
            height: 60,
            width: 55,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("The Product",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: blackButtonColor)),
              Row(
                children: [
                  Text("Qty",
                      style: TextStyle(
                          fontSize: 9.5,
                          fontWeight: FontWeight.w600,
                          color: blackButtonColor)),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: blackButtonColor,
                    radius: 10,
                    child: Text(
                      "03",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text("₹ 499.00",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: blackButtonColor)),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "Delivered on 22 Juy 2021",
                style: TextStyle(
                  fontSize: 9.29,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3918FF),
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Column(
            children: [
              Container(
                height: 20,
                width: 70,
                alignment: Alignment.center,
                // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(color: blueButtonColor),
                child: Text(
                  "Support",
                  style: TextStyle(
                    fontSize: 5.5,
                    wordSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text("Cancel Order",
                  style: TextStyle(
                      fontSize: 6.6,
                      fontWeight: FontWeight.w600,
                      color: blackButtonColor)),
            ],
          )
        ],
      ),
    );
  }
}
