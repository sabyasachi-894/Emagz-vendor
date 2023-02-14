import 'package:emagz_vendor/social_media/screens/chat/chat_list_screen.dart';
import 'package:emagz_vendor/social_media/screens/home_screen.dart';
import 'package:emagz_vendor/social_media/screens/search/search_screen.dart';
import 'package:emagz_vendor/user/screens/bag/bag_screen.dart';
import 'package:emagz_vendor/user/screens/home/home_screen.dart';
import 'package:emagz_vendor/user/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserNavController extends GetxController {
  int? possition;
  bool isEdit = false;

  List<Widget> screen = [
     HomeScren(),
   BagScreen(),

    // const Text("data"),
   ProfileScreenUser()
  ];
  int page = 0;

  pageUpdate(int index) {
    page = index;
    update();
  }
}
