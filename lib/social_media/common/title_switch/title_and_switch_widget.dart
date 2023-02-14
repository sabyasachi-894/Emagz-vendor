import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TitleAndSwitchWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  bool isActive;
  TitleAndSwitchWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.isActive})
      : super(key: key);

  @override
  State<TitleAndSwitchWidget> createState() => _TitleAndSwitchWidgetState();
}

class _TitleAndSwitchWidgetState extends State<TitleAndSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              // "53 people",
              widget.subTitle,
              style: TextStyle(
                  color: signInHeading,
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        FlutterSwitch(
            activeColor: whiteAcent,
            toggleColor: blueColor,
            padding: 1,
            height: 20,
            width: 50,
            inactiveColor: lightgrayColor,
            inactiveToggleColor: toggleInactive,
            value: widget.isActive,
            onToggle: (val) {
              setState(() {
                widget.isActive = val;
              });
            }),
      ],
    );
  }
}