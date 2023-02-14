import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class AddPostScren extends StatelessWidget {
  AddPostScren({Key? key}) : super(key: key);
  // final navController = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      content: SizedBox(
        height: size.height / 3.3,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  // navController.page = 2;
                  // Get.back();
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            color: grayColor.withOpacity(.5),
                            blurRadius: 2,
                            spreadRadius: 1)
                      ]),
                  child: const Icon(Icons.close),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              // controller: controller,
              maxLines: 3,
              cursorColor: grayColor,

              decoration: InputDecoration(
                hintStyle: const TextStyle(
                    color: Color(
                      0xff818181,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 9),
                fillColor: const Color(0xffF6F6F6),
                hintText: "Type something",
                filled: true,
                contentPadding: const EdgeInsets.only(left: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: lightgrayColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF6F6F6),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffF6F6F6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      color: lightgrayAcent,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Image",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      color: lightgrayAcent,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Video",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // navController.page = 2;
                    showAlertDialog(context);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        color: lightgrayAcent,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Stream",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              height: 35,
              decoration: BoxDecoration(
                  color: chipColor, borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Create a post",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AlertDialog alert = AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        contentPadding: EdgeInsets.zero,
        content: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: size.height / 3,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Are your ready to\ngo live ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Now everyone can watch you live ",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Container()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(color: chipColor),
                child: Text(
                  "Go Live",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
