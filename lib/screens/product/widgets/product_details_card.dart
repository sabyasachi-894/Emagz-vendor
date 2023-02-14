import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    Key? key,
    required this.url3,
  }) : super(key: key);

  final String url3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
          // boxShadow: [BoxShadow(color: grayColor, blurRadius: 5)],
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: borderColor, width: 1, style: BorderStyle.solid)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(url3),
                radius: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sony Headset",
                style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            "250",
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: blackButtonColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "#000",
                style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            "₹ 599.00",
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
