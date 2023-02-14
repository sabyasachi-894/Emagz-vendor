import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/common/appbar/common_app_bar.dart';
import 'package:emagz_vendor/social_media/common/searchbar/search_bar.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:emagz_vendor/social_media/screens/explore/widgets/multi_choise_chip.dart';
import 'package:emagz_vendor/social_media/screens/search/widget/search_result_card.dart';
import 'package:flutter/material.dart';

import '../../../user/models/product_model.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> reportList = [
    "Travel",
    "Funny",
    "Photography",
    "News",
    "Pets",
    "Roadtrip",
  ];
  List<String> selectedReportList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaAppBar(title: "Search"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              SearchWidget(),
              const SizedBox(
                height: 15,
              ),
              MultiSelectChip(
                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                    print(selectedList.toList());
                  });
                },
                maxSelection: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Search",
                    style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Clear",
                    style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 3,
                      spreadRadius: 2)
                ], color: whiteColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          color: chipColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "#",
                        style: TextStyle(fontSize: 18, color: whiteColor),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Photography",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "21M Views",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 3,
                      spreadRadius: 2)
                ], color: whiteColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(imageList[7]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "@username",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "Follow",
                      style: TextStyle(
                          color: purpleColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 3,
                      spreadRadius: 2)
                ], color: whiteColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          color: chipColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "#",
                        style: TextStyle(fontSize: 18, color: whiteColor),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Photography",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "21M Views",
                          style: TextStyle(
                              color: blackButtonColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "People you may know",
                style: TextStyle(
                    color: blackButtonColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              SearchResultCard(),
              SearchResultCard(),
              SearchResultCard(),
              SearchResultCard(),
            ],
          ),
        ),
      ),
    );
  }
}
