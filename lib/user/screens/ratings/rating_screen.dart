import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:emagz_vendor/user/models/product_model.dart';
import 'package:emagz_vendor/user/screens/home/widgets/rating_widets.dart';
import 'package:emagz_vendor/user/screens/ratings/widgets/ration_card.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UserTopBar(title: "My Rating"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return RatingCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
