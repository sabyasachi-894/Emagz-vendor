import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/screens/address/widgets/manage_address_heading.dart';
import 'package:emagz_vendor/user/screens/address/widgets/manage_address_textfield.dart';
import 'package:flutter/material.dart';

class ManageAddressScreen extends StatefulWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

  @override
  State<ManageAddressScreen> createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
  bool currentaddress = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const UserTopBar(title: "Manage Address"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ManageAddressHeading(
              title: "New Address",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ManageAddressHeading(
                        title: "Name",
                      ),
                      ManageAddressTextfiled(),
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
                      const ManageAddressHeading(
                        title: "Phone Number",
                      ),
                      ManageAddressTextfiled(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ManageAddressHeading(
              title: "Address",
            ),
            ManageAddressTextfiled(
              maxLines: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ManageAddressHeading(
                        title: "City",
                      ),
                      ManageAddressTextfiled(),
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
                      const ManageAddressHeading(
                        title: "State",
                      ),
                      ManageAddressTextfiled(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ManageAddressHeading(
                        title: "Locality",
                      ),
                      ManageAddressTextfiled(),
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
                      const ManageAddressHeading(
                        title: "Pincode",
                      ),
                      ManageAddressTextfiled(),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: blackButtonColor,
                    value: currentaddress,
                    onChanged: (val) {
                      setState(() {
                        currentaddress = val!;
                      });
                    }),
                Text(
                  "Set as current address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                // Get.back();
              },
              child: Container(
                width: size.width / 2.15,
                height: 45,
                alignment: Alignment.center,
                child: Text("Back ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: blackButtonColor, fontSize: 15)),
              ),
            ),
            InkWell(
              onTap: () {
                // Get.to(() => const OrderScreen());
              },
              child: Container(
                width: size.width / 2.15,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    color: blueButtonColor,
                    borderRadius: BorderRadius.circular(1)),
                child: Text(
                  "Add New Address",
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
