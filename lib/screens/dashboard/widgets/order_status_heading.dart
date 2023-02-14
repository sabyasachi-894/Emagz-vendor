import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class OrderStatusHeadings extends StatelessWidget {
  const OrderStatusHeadings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Product",
            style: TextStyle(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            "Order ID",
            style: TextStyle(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            "Amount",
            style: TextStyle(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            "Order Status",
            style: TextStyle(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
