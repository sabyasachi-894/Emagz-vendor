import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/product/add_product_screen.dart';
import 'package:emagz_vendor/screens/product/widgets/add_product_textfield.dart';
import 'package:emagz_vendor/screens/product/widgets/product_details_card.dart';
import 'package:emagz_vendor/screens/product/widgets/product_heading_text.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:emagz_vendor/screens/product/widgets/view_product_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../common/common_top_bar.dart';
import 'widgets/product_desc_headings.dart';
import 'widgets/product_list_card.dart';

class ViewProductScreen extends StatefulWidget {
  const ViewProductScreen({Key? key}) : super(key: key);

  @override
  State<ViewProductScreen> createState() => _ViewProductScreenState();
}

class _ViewProductScreenState extends State<ViewProductScreen> {
  String url =
      "https://images.unsplash.com/photo-1563291589-4e9a1757428d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9sbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  String url2 =
      "https://images.unsplash.com/photo-1602734846297-9299fc2d4703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  String url3 =
      "https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGVhZHBob25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const commonTopBar(
                title: 'Product',
              ),
              const SearchContainer(),
              const Text(
                "Product Details",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 10, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Product",
                      style: TextStyle(
                          color: Color(0xff141414),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 12),
                            child: const Text(
                              "Stock",
                              style: TextStyle(
                                  color: Color(0xff141414),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: const Text(
                              "Color",
                              style: TextStyle(
                                  color: Color(0xff141414),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: const Text(
                              "Total",
                              style: TextStyle(
                                  color: Color(0xff141414),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            // viewProductDialog(context);
                            showAlertDailog(context);
                            // QuickEditDailog(context);
                          },
                          child: ProductDetailsCard(url3: url3));
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width / 2.15,
              alignment: Alignment.center,
              height: 45,
              decoration: BoxDecoration(
                  color: blackButtonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Manage Product",
                style: TextStyle(color: whiteColor),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const AddProductScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Add Product",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

viewProductDialog(BuildContext context) {
  String url =
      "https://images.unsplash.com/photo-1602734846297-9299fc2d4703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  TextStyle modelTextHeading = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w600);
  TextStyle modelTextbody = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w400);

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black, width: 4),
        borderRadius: BorderRadius.circular(10)),
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(url),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Name", style: modelTextHeading),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Sony Headset ", style: modelTextbody),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stock", style: modelTextHeading),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("150", style: modelTextbody),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Color", style: modelTextHeading),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: blackButtonColor,
                        radius: 8,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("#000", style: modelTextbody),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size", style: modelTextHeading),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("N/A", style: modelTextbody),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("GST", style: modelTextHeading),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("₹ 20.00", style: modelTextbody),
                ],
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Container(
                margin: const EdgeInsets.only(right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price", style: modelTextHeading),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("₹ 599.00", style: modelTextbody),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
    insetPadding: const EdgeInsets.all(10),
    actionsPadding: const EdgeInsets.all(10),
    titlePadding: EdgeInsets.zero,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDailog(BuildContext context) {
  String url =
      "https://images.unsplash.com/photo-1602734846297-9299fc2d4703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  TextStyle modelTextHeading = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w600);
  TextStyle modelTextbody = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w400);

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Edit Product Option",
            style: modelTextHeading.copyWith(
                fontSize: 21, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Divider(
            thickness: .3,
            color: unselectedLabel,
          ),
          InkWell(
            onTap: () {
              Get.back();

              viewProductDialog(context);
            },
            child: ModelTile(
              modelTextbody: modelTextbody,
              title: "View Product",
              icons: Icons.visibility_outlined,
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              QuickEditDailog(context);
            },
            child: ModelTile(
              modelTextbody: modelTextbody,
              title: "Quick Edit",
              icons: Icons.visibility_outlined,
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(() => AddProductScreen());
            },
            child: ModelTile(
                modelTextbody: modelTextbody,
                title: "Edit Product",
                icons: Icons.edit_outlined),
          ),
          ModelTile(
            modelTextbody: modelTextbody,
            title: "Delete Product",
            icons: Icons.delete_outline,
            color: cancledColor,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 1.5,
              alignment: Alignment.center,
              height: 45,
              decoration: BoxDecoration(
                  color: blackButtonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Back",
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
        ],
      ),
    ),
    insetPadding: const EdgeInsets.all(10),
    actionsPadding: const EdgeInsets.all(10),
    titlePadding: EdgeInsets.zero,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

QuickEditDailog(BuildContext context) {
  String url =
      "https://images.unsplash.com/photo-1602734846297-9299fc2d4703?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  TextStyle modelTextHeading = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w600);
  TextStyle modelTextbody = TextStyle(
      color: blackButtonColor, fontSize: 14, fontWeight: FontWeight.w400);

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Quick",
            style: modelTextHeading.copyWith(
                fontSize: 21, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 115,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/png/quickImage.png",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              "Name",
              style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ),
          AddProductTextField(),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Price",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    AddProductTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Select Size",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    AddProductTextField(),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Stock",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    AddProductTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Colour",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    AddProductTextField(),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        color: blackButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Back",
                      style: TextStyle(color: whiteColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          end: Alignment(-0.6, .6),
                          begin: Alignment(0.5, -5.5),
                          colors: [
                            darkBlueAcent,
                            darkBlue,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Update",
                      style: TextStyle(color: whiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    insetPadding: const EdgeInsets.all(10),
    actionsPadding: const EdgeInsets.all(10),
    titlePadding: EdgeInsets.zero,
    contentPadding: const EdgeInsets.all(20),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class ModelTile extends StatelessWidget {
  final String title;
  final IconData icons;
  final TextStyle modelTextbody;
  Color? color;

  ModelTile({
    Key? key,
    required this.modelTextbody,
    required this.title,
    required this.icons,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icons,
                color: color,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: modelTextbody.copyWith(color: color),
              ),
            ],
          ),
          Divider(
            thickness: .3,
            color: unselectedLabel,
          ),
        ],
      ),
    );
  }
}
