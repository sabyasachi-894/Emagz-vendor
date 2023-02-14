import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class AddProductDropDown extends StatelessWidget {
  final List listData;
  String? value;
  AddProductDropDown({Key? key, required this.listData, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            fillColor: whiteColor,
            hintText: "",
            filled: true,
            contentPadding: const EdgeInsets.only(left: 5, right: 5),
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
          focusColor: Colors.white,
          // dropdownColor: AppColor.red,
          hint: Text("Select status"),
          isExpanded: true,
          icon: const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down,
              )),
          items: listData.map((val) {
            return DropdownMenuItem<String>(
                value: val.toString(),
                child: Text(
                  "$val ",
                  style: TextStyle(
                      // fontSize: 14.sp,
                      // color: value == "pending" ? cancledColor : blackButtonColor,
                      color: cancledColor),
                ));
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
