import 'package:dotted_line/dotted_line.dart';
import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/screens/coupon/widgets/user_coupon_clippath.dart';
import 'package:flutter/material.dart';

class UserCouponWidget extends StatelessWidget {
  const UserCouponWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:  UserCoupon(bottom: 45, holeRadius: 45),
      child: Container(
        // margin: EdgeInsets.only(left: 20),
        padding:
            const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        height: 130,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xff2C199E),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
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
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                    SizedBox(
                      width: 112,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis a, magna ante id libero eleifend consectetur. Odio nibh fringilla sit varius ut orci libero. Posuere sed sit turpis ac congue viverra.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 4,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                    Text(
                      "Expire Date  02/05/21",
                      style: TextStyle(
                          fontSize: 4,
                          fontWeight: FontWeight.w500,
                          color: whiteColor),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 21,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xff3C83E6),
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        "Apply Code",
                        style: TextStyle(
                            fontSize: 5.5,
                            fontWeight: FontWeight.w600,
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
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: whiteColor),
                      ),
                      Text(
                        "   Off",
                        style: TextStyle(
                            fontSize: 11.5,
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