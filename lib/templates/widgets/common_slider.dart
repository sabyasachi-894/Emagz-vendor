import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../user/models/product_model.dart';

class CommonSlider extends StatefulWidget {
  const CommonSlider({Key? key}) : super(key: key);

  @override
  State<CommonSlider> createState() => _CommonSliderState();
}

class _CommonSliderState extends State<CommonSlider> {
  final controller = PageController(initialPage: 0);

  int activePage = 0;

  List<Widget> indicators(
    imagesLength,
    currentIndex,
  ) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 22,
        height: 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: currentIndex == index ? Colors.white : Color(0xffA0A0A0),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
              itemCount: dressList.length,
              pageSnapping: true,
              controller: controller,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                return Image.network(
                  dressList[pagePosition].image.toString(),
                  fit: BoxFit.cover,
                );
              }),
        ),
        Positioned(
          top: 170,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: indicators(dressList.length, activePage)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: whiteColor,
                  size: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: whiteColor,
                  size: 15,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
