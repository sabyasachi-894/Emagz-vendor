import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class MyCustomTextfiled extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? inputType;
  String? hint;
  int? maxLines;

  MyCustomTextfiled({
    Key? key,
    this.controller,
    this.hint,
    this.maxLines = 1,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF5F5F5), borderRadius: BorderRadius.circular(8)),
      height: maxLines == 1 ? 40 : null,
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        cursorColor: grayColor,
        keyboardType: inputType,
        minLines: maxLines,
        // autofocus: true,
        // scrollPadding: EdgeInsets.zero,

        // autofocus: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 5),
          hintText: hint,
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
