import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'widgets/chart_card.dart';
import 'widgets/income_card.dart';
import 'widgets/order_status_heading.dart';
import 'widgets/product_list_card.dart';

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff090770),
            Color(0xff4D50B6),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            ZoomDrawer.of(context)!.toggle();
                          },
                          child: Image.asset(
                            "assets/png/menu.png",
                            height: 22,
                            width: 22,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Hey, User",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Good Morning",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const NotificationScreen());
                        },
                        child: SvgPicture.asset(
                          "assets/svg/Notify.svg",
                          width: 45,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      SvgPicture.asset(
                        "assets/svg/Account.svg",
                        width: 45,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const ChartCard(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IncomeCard(
                    title: "Total Income",
                    totalCount: "₹ 700k",
                    gradient: orangeGradient,
                    imagepath: "assets/png/Rect01.png",
                  ),
                  IncomeCard(
                    title: "Total Order",
                    totalCount: "250",
                    gradient: orangeGradient,
                    imagepath: "assets/png/Rect02.png",
                  ),
                  IncomeCard(
                    title: "Order Pending",
                    totalCount: "40",
                    gradient: orangeGradient,
                    imagepath: "assets/png/Rect01.png",
                  ),
                  // Container(
                  //   alignment: Alignment.center,
                  //   height: 110,
                  //   width: 110,
                  //   decoration: BoxDecoration(
                  //     image: const DecorationImage(
                  //         // matchTextDirection: true,
                  //         image: AssetImage("assets/png/Rect01.png"),
                  //         fit: BoxFit.contain),
                  //     // gradient: orangeGradient,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //       top: 35,
                  //     ),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       // mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Text(
                  //           "40",
                  //           style: TextStyle(
                  //               color: whiteColor,
                  //               fontSize: 35,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //         Text(
                  //           "Order Pending",
                  //           style: TextStyle(
                  //               color: whiteColor,
                  //               fontSize: 10,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Text(
                  "Order Status",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const OrderStatusHeadings(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return const ProductListTile();
                    })),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
