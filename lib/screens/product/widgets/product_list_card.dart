import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ProductListCard extends StatelessWidget {
  const ProductListCard({
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
            "250 Pc",
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "18 %",
            style: TextStyle(
              color: blackButtonColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Exclude",
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
