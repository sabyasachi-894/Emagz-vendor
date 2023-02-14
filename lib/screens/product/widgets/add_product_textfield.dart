import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class AddProductTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? inputType;
  String? hint;
  int? maxLines;

  AddProductTextField({
    Key? key,
    this.hint,
    this.inputType,
    this.maxLines = 1,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxLines == 1 ? 40 : null,
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        cursorColor: grayColor,
        keyboardType: inputType,
        // autofocus: true,
        decoration: InputDecoration(
          fillColor: whiteColor,
          hintText: hint,
          filled: true,
          contentPadding: const EdgeInsets.only(left: 5),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: blackButtonColor.withOpacity(.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: blackButtonColor.withOpacity(.2),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: blackButtonColor.withOpacity(.2),
            ),
          ),
        ),
      ),
    );
  }
}
