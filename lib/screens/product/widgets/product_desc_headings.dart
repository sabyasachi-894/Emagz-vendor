import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ProductDiscHeading extends StatelessWidget {
  const ProductDiscHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Product",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 35),
                child: const Text(
                  "Stock",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: const Text(
                  "GST",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12),
                child: const Text(
                  "GST Type",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
