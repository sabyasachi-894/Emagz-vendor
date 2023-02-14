import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class MyAddressCard extends StatelessWidget {
  bool isCurrent;
  MyAddressCard({
    Key? key,
    this.isCurrent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.home_outlined),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: blackButtonColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                width: 3,
              ),
              isCurrent == true
                  ? Container(
                      height: 10,
                      width: 2,
                      color: blackButtonColor,
                    )
                  : Container(),
              const SizedBox(
                width: 3,
              ),
              isCurrent == true
                  ? const Text(
                      "Current Delivery ",
                      style: TextStyle(
                          color: Color(0xff3918FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In habitant semper tristique metus hac. Consectetur tellus gravida gravida tellus risus mattis. Vivamus vitae, erat eget et, non ullamcorper. A sed orci vestibulum non sit id. Est arcu, varius enim elit lectus est. Vel in quis urna venenatis, metus, sit posuere augue feugiat.",
            style: TextStyle(
                color: blackButtonColor,
                fontWeight: FontWeight.w500,
                fontSize: 8.5),
          )
        ],
      ),
    );
  }
}
