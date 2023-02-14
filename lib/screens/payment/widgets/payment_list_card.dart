import 'dart:ui';

import 'package:emagz_vendor/model/order_list_model.dart';
import 'package:emagz_vendor/model/payment_list_model.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class PaymentListCard extends StatelessWidget {
  final PaymentList paymentList;
  const PaymentListCard({
    required this.paymentList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: borderColor, width: 1, style: BorderStyle.solid)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                paymentList.transectionId,
                // "5415asd518",
                style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            paymentList.name,
            // "Sony Headset",
            style: TextStyle(
              color:
                  paymentList.name == "Rec Payment" ? recpayment : cancledColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            paymentList.date,
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "₹ ${paymentList.totalAmount}",
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
