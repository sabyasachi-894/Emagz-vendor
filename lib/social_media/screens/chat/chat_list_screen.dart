import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/product/widgets/search_container.dart';
import 'package:emagz_vendor/social_media/common/appbar/common_app_bar.dart';
import 'package:emagz_vendor/social_media/common/searchbar/search_bar.dart';
import 'package:emagz_vendor/social_media/screens/chat/widgets/user_list_card.dart';
import 'package:emagz_vendor/social_media/screens/chat/widgets/user_online_circle.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaAppBar(title: "Chat"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: const SearchWidget(),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Online",
              style: TextStyle(
                  color: blackButtonColor,
                  fontSize: 15.5,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            child: Row(
              children: const [
                UserOnlineCircle(),
                SizedBox(
                  width: 10,
                ),
                UserOnlineCircle(),
                SizedBox(
                  width: 10,
                ),
                UserOnlineCircle(),
                SizedBox(
                  width: 10,
                ),
                UserOnlineCircle(),
              ],
            ),
          ),
          UserChatList(
            isMessage: true,
          ),
          UserChatList(),
          UserChatList(),
          UserChatList(),
        ],
      ),
    );
  }
}



