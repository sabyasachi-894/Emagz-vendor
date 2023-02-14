import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class AddProductheadind extends StatelessWidget {
  final String tittle;
  bool? isRequired;
  AddProductheadind({Key? key, required this.tittle, this.isRequired = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: RichText(
        text: TextSpan(
          text: tittle,
          style: TextStyle(
              color: headingColor, fontSize: 14, fontWeight: FontWeight.w400),
          children: [
            TextSpan(
              text: isRequired == true ? ' *' : "",
              style: TextStyle(color: headingColor, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
