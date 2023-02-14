import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/product/widgets/add_product_dropdown.dart';
import 'package:emagz_vendor/screens/product/widgets/add_product_textfield.dart';
import 'package:emagz_vendor/screens/product/widgets/product_heading_text.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List subCategory = ["a", 'b', 'c'];
  String? selectedSubcategory;
  List category = ["a", 'b', 'c'];
  String? selectedcategory;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: whiteColor,
      child: Scaffold(
        body: SafeArea(
            child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            const SizedBox(
              height: 15,
            ),
            const commonTopBar(title: 'Product',),
            const SearchContainer(),
            const Text(
              "Add New Product",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, right: 5),
                      height: 100,
                      // width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: lightgrayAcent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Upload \nPicture",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, right: 5),
                      height: 100,
                      // width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: lightgrayAcent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Upload \nPicture",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
                      )),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, right: 5),
                    height: 100,
                    // width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: lightgrayAcent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Upload \nPicture",
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            AddProductheadind(
              tittle: 'Product Name',
            ),
            AddProductTextField(),
            AddProductheadind(
              tittle: 'Select Categories',
            ),
            AddProductDropDown(
              listData: category,
              value: selectedcategory,
            ),
            AddProductheadind(
              tittle: 'Select Sub - Categories',
            ),
            AddProductDropDown(
              listData: subCategory,
              value: selectedSubcategory,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'Size',
                        isRequired: false,
                      ),
                      AddProductDropDown(
                        listData: subCategory,
                        value: selectedSubcategory,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'Weight',
                        isRequired: false,
                      ),
                      AddProductTextField(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'Price',
                        isRequired: false,
                      ),
                      AddProductTextField(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'Discount',
                        isRequired: false,
                      ),
                      AddProductTextField(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AddProductheadind(
              tittle: 'Color',
              isRequired: false,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: grayColor,
                  child: Icon(
                    Icons.add,
                    color: blackButtonColor,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: productColor,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'GST Percentage',
                        isRequired: false,
                      ),
                      AddProductTextField(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddProductheadind(
                        tittle: 'GST Type',
                        isRequired: false,
                      ),
                      AddProductDropDown(
                        listData: subCategory,
                        value: selectedSubcategory,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AddProductheadind(
              tittle: 'Description',
              isRequired: false,
            ),
            AddProductTextField(
              maxLines: 5,
            ),
          ],
        )),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: size.width / 2.15,
                  alignment: Alignment.center,
                  height: 45,
                  decoration: BoxDecoration(
                      color: grayColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Back",
                    style: TextStyle(color: blackButtonColor.withOpacity(.5)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => const AddProductScreen());
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
      ),
    );
  }
}


