import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class ManageAddressHeading extends StatelessWidget {
  final String title;
  const ManageAddressHeading({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      child: Text(
        title,
        style: TextStyle(
            color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
