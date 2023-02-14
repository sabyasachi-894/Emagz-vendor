import 'package:dotted_line/dotted_line.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/coupon/widgets/custom_clipper.dart';
import 'package:flutter/material.dart';

class MyCustomCuppon extends StatelessWidget {
  const MyCustomCuppon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DolDurmaClipper(bottom: 20, holeRadius: 20),
      child: Container(
        // margin: EdgeInsets.only(right: 5),
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
        height: 60,
        width: 130,
        decoration: BoxDecoration(
            color: Color(0xff2C199E), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Coupon Code",
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                    SizedBox(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis a, magna ante id libero eleifend consectetur. Odio nibh fringilla sit varius ut orci libero. Posuere sed sit turpis ac congue viverra.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 2,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      ),
                    ),
                    Text(
                      "Expire Date  02/05/21",
                      style: TextStyle(
                          fontSize: 2,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Color(0xff3C83E6),
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "Apply Code",
                        style: TextStyle(
                            fontSize: 3,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DottedLine(
                    dashGapLength: 2,
                    direction: Axis.vertical,
                    dashColor: whiteColor,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " 25%",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: whiteColor),
                      ),
                      Text(
                        "   Off",
                        style: TextStyle(
                            fontSize: 5,
                            fontWeight: FontWeight.w600,
                            color: whiteColor),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
