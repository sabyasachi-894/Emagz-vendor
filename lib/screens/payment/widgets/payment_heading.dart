import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class PaymentHeading extends StatelessWidget {
  const PaymentHeading({Key? key}) : super(key: key);

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
              "Trans. ID",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),
          // SizedBox(
          //   width: 20,
          // ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Text(
              "Name",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),
          Text(
            "Date",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: orderHeadingColor),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15, left: 8),
            child: Text(
              "Total",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: orderHeadingColor),
            ),
          ),

          // Container(
          //   margin: const EdgeInsets.only(right: 17, left: 8),
          //   child: Text(
          //     "Status",
          //     style: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w500,
          //         color: orderHeadingColor),
          //   ),
          // ),
        ],
      ),
    );
  }
}
