import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class BagDropDown extends StatelessWidget {
  final List listData;
  String? value;
  BagDropDown({Key? key, required this.listData, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          // itemHeight: 1,
          decoration: const InputDecoration(
            isDense: true,
            fillColor: Colors.transparent,
            hintText: "",
            filled: true,
            contentPadding:
                EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          focusColor: Colors.transparent,
          // dropdownColor: AppColor.red,
          hint: Text("01",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: blackButtonColor)),
          isExpanded: true,
          icon: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 22,
                color: blackButtonColor,
              )),
          items: listData.map((val) {
            return DropdownMenuItem<String>(
              value: val.toString(),
              child: Text("$val ",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: blackButtonColor)),
            );
          }).toList(),
          value: value,
          onChanged: (val) {
            value = val.toString();
            print(value);
          },
          validator: (value) {
            if (value == null) {
              return 'Select Your Frequency';
            }

            return null;
          },
        ),
      ),
    );
  }
}