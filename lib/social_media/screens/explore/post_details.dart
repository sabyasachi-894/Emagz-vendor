import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/common/appbar/common_app_bar.dart';
import 'package:emagz_vendor/social_media/screens/explore/explpre_screen.dart';
import 'package:emagz_vendor/social_media/screens/home/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorePostDetails extends StatelessWidget {
  const ExplorePostDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageList;
    return Scaffold(
      backgroundColor: socialBack,
      appBar: const SocialMediaAppBar(title: "Explore"),
      body: Column(
        children: [
          SizedBox(
            height: Get.size.height / 2,
            child: PostCard(
              isBorder: false,
              url: imageList[4],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: imageList.length,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return ImageTile(index: index, width: 200, height: 200);
              },
            ),
          ),
        ],
      ),
    );
  }
}
