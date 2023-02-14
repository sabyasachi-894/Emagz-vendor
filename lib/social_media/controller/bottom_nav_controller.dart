import 'package:emagz_vendor/social_media/screens/chat/chat_list_screen.dart';
import 'package:emagz_vendor/social_media/screens/home_screen.dart';
import 'package:emagz_vendor/social_media/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../screens/explore/explpre_screen.dart';
import '../screens/post/add_post_screen.dart';

class NavController extends GetxController {
  int? possition;
  bool isEdit = false;

  List<Widget> screen = [
    const SocialMediaHomePage(),
    SearchScreen(),

    // const Text("data"),
    AddPostScren(),
    const ExploreScreen(),
    const ChatListScreen(),
  ];
  int page = 0;

  pageUpdate(int index) {
    page = index;
    update();
  }
}
