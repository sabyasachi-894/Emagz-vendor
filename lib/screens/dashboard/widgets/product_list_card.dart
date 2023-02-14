import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Sony Headset",
            style: TextStyle(
                fontSize: 8, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: const Text(
              "LKSNDOAAL62",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: const Text(
              "₹ 1499.00",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Dispatch",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
