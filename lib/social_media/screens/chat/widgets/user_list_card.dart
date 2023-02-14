import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/chat/chat_screen.dart';
import 'package:emagz_vendor/social_media/screens/chat/widgets/user_online_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserChatList extends StatelessWidget {
  bool isMessage;
  UserChatList({
    Key? key,
    this.isMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ChatScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
        padding: const EdgeInsets.symmetric(vertical: 5),
        height: 75,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 3,
                offset: const Offset(0, 2),
                spreadRadius: 2)
          ],
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const UserOnlineCircle(),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "How are you?",
                  style: TextStyle(
                      color: blackButtonColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Spacer(),
            isMessage == true
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: chipColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : const Text(
                    "08:00 Am",
                    style: TextStyle(
                        color: Color(0xffA1A1A1),
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
