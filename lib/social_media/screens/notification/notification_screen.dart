import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class SocialNotificationScreen extends StatelessWidget {
  const SocialNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: socialBack,
      appBar: AppBar(
        leading: Container(),
        toolbarHeight: 80,
        backgroundColor: socialBack,
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Notification",
            style:
                TextStyle(color: blackButtonColor, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: blackButtonColor,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 3),
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      products[index].image.toString(),
                      // "https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGVhZHBob25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.size.width / 2,
                        child: const Text(
                          "Congrats",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: Get.size.width / 2,
                        child: const Text(
                          "Your post has been sucessfully posted",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "2 min",
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
