import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ViewProductHeading extends StatelessWidget {
  const ViewProductHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            "Product",
            style: TextStyle(fontSize: 14,color: blackButtonColor, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Stock",
            style: TextStyle(fontSize: 14,color: blackButtonColor, fontWeight: FontWeight.w500),
          ),
          Text(
            "Color",
            style: TextStyle(fontSize: 14,color: blackButtonColor, fontWeight: FontWeight.w500),),
          Text(
            "Price",
            style: TextStyle(fontSize: 14, color: blackButtonColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
