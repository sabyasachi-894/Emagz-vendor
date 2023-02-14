import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';


class AddCouponHeadingText extends StatelessWidget {
  final String headings;
  const AddCouponHeadingText({Key? key, required this.headings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: Text(
        headings,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: blackButtonColor),
      ),
    );
  }
}
