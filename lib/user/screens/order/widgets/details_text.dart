import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  final String title;
  const DetailsText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 12, color: blackButtonColor),
    );
  }
}