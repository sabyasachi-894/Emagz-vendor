import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';


class StoryViewCard extends StatelessWidget {
  const StoryViewCard({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 68,
      width: 72,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/png/story_border.png"),
            fit: BoxFit.cover),
      ),
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(-48.5 / 360),
        child: Stack(
          children: [
            Positioned(
              top: 12.3,
              left: 9,
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                    border: Border.all(color: whiteColor, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(url), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 66,
              left: 20,
              child: Text(
                "@usere name",
                style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.bold,
                    color: blackButtonColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}