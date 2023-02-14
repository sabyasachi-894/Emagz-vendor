import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/home_screen_appbar.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/post_card.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/story_view_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialMediaHomePage extends StatelessWidget {
  const SocialMediaHomePage({Key? key}) : super(key: key);
  final String url =
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialHomeScreenAppBar(title: "eMAGZ"),
      body: Column(
        children: [
          Container(
            width: Get.size.width,
            margin: const EdgeInsets.only(top: 10),
            height: 85,
            decoration:
                BoxDecoration(border: Border.all(color: whiteColor, width: 1)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/png/story_border.png"),
                        fit: BoxFit.cover),
                  ),
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(-48 / 360),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10.5,
                          left: 7.3,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(url),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 8,
                            child: const CircleAvatar(
                              backgroundColor: Color(0xff3B12AA),
                              radius: 6,
                              child: Icon(
                                Icons.add,
                                size: 9,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (ctx, index) {
                        return StoryViewCard(url: url);
                      }),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Get.to(() => ExploreScreen());
                    },
                    child: PostCard(url: url));
              },
            ),
          )
        ],
      ),
    );
  }
}
