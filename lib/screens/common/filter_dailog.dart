import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../product/widgets/add_product_textfield.dart';

class FilterDailog extends StatefulWidget {
  const FilterDailog({Key? key}) : super(key: key);

  @override
  State<FilterDailog> createState() => _FilterDailogState();
}

class _FilterDailogState extends State<FilterDailog> {
  int value = 0;
  List data = [" Below 500 ", "500 - 1000", "1000 - Above"];
  @override
  Widget build(BuildContext context) {
    return filterDalilog(context);
  }

  Widget customRadioButton(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        // height: 30,
        decoration: BoxDecoration(
            gradient: (value == index)
                ? const LinearGradient(
                    begin: Alignment(-0.5, .1),
                    end: Alignment(0.1, -3.1),
                    colors: [
                      Color(0xff0F0AA4),
                      Color(0xff2992E3),
                    ],
                  )
                : LinearGradient(
                    colors: [blackButtonColor, blackButtonColor],
                  ),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(color: whiteColor, fontSize: 12),
        ),
      ),
    );
  }
}

filterDalilog(BuildContext context) {
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
