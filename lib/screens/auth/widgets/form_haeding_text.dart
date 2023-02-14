import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class FormHeadingText extends StatelessWidget {
  final String headings;
  FontWeight? fontWeight;
  Color? color;
  FormHeadingText(
      {Key? key, required this.headings, this.fontWeight, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: Text(
        headings,
        style: TextStyle(
          
            // height: .25,
            fontSize: 15,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: color ?? blackButtonColor),
      ),
    );
  }
}
