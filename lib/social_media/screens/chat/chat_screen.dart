import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/chat/widgets/user_list_card.dart';
import 'package:emagz_vendor/social_media/screens/chat/widgets/user_online_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/appbar/common_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: whiteColor),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?b=1&k=20&m=1307615661&s=170667a&w=0&h=Zp9_27RVS_UdlIm2k8sa8PuutX9K3HTs8xdK0UfKmYk=',
                              ),
                              maxRadius: 20,
                            ),
                            Positioned(
                                top: 28,
                                left: 25,
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: whiteColor,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: chatOnlineDot,
                                  ),
                                ))
                          ],
                        ),
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Active",
                              style: TextStyle(
                                  color: blackButtonColor,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "assets/svg/Search-1.svg",
                          height: 32,
                          width: 30,
                          color: blackButtonColor,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: messages.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 10, bottom: 10),
                          child: messages[index].messageType == "receiver"
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        color: (messages[index].messageType ==
                                                "receiver"
                                            ? chatContainer
                                            : chipColor),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      child: Text(
                                        messages[index].messageContent,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          color: (messages[index].messageType ==
                                                  "receiver"
                                              ? blackButtonColor
                                              : chipColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(25),
                                        ),
                                        color: (messages[index].messageType ==
                                                "receiver"
                                            ? chatContainer
                                            : chipColor),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            messages[index].messageContent,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: (messages[index]
                                                          .messageType ==
                                                      "receiver"
                                                  ? blackButtonColor
                                                  : whiteColor),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.checklist_outlined,
                                            color: whiteColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 35,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 3,
                            spreadRadius: 2)
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.center,
                          width: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.emoji_emotions_outlined,
                                color: blackButtonColor,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.attach_file,
                                color: blackButtonColor,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: grayColor,
                            decoration: const InputDecoration(
                                isDense: true,
                                // filled: true,
                                hintText: "Type something ",
                                hintStyle: TextStyle(
                                    fontSize: 13, color: Color(0xff909090)),
                                contentPadding: EdgeInsets.only(left: 2),
                                border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: chipColor,
                            child: Icon(
                              Icons.send,
                              size: 10,
                              color: whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(
      messageContent: "Is there any thing wrong?", messageType: "sender"),
];
