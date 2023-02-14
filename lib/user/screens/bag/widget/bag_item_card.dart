import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/bag/bag_screen.dart';
import 'package:emagz_vendor/user/screens/bag/widget/bag_drop_down.dart';
import 'package:flutter/material.dart';

class BagItemcard extends StatelessWidget {
  const BagItemcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var quanity;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: lightgrayColor, width: .7),
          bottom: BorderSide(color: lightgrayColor, width: .7),
        ),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              products[1].image.toString(),
              height: 60,
              width: 55,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("The Product",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: blackButtonColor)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("₹ 499.00",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: blackButtonColor)),
                ],
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            SizedBox(
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Qty",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: blackButtonColor)),
                  SizedBox(
                    width: 50,
                    // height: 50,
                    child: BagDropDown(
                      listData: ["01", "02", "03"],
                      value: quanity,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Expanded(
              child: Icon(
                Icons.close,
                size: 15,
                color: blackButtonColor,
              ),
            )
          ]),
    );
  }
}
