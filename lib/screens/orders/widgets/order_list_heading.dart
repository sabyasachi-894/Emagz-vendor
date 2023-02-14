import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class OrderHeading extends StatelessWidget {
  const OrderHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Order ID",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),
          // SizedBox(
          //   width: 20,
          // ),
          Text(
            "Name",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: orderHeadingColor),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              "Qty",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),
          Text(
            "Total",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: orderHeadingColor),
          ),

          Container(
            margin: const EdgeInsets.only(right: 20, left: 5),
            child: Text(
              "Status",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),
        ],
      ),
    );
  }
}
