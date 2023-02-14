import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.star,
              color: tempStarColor,
              size: 12,
            ),
            const SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: tempStarColor,
              size: 12,
            ),
            const SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: tempStarColor,
              size: 12,
            ),
            const SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: tempStarColor,
              size: 12,
            ),
            const SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: grayColor,
              size: 12,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "4.0",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: blackButtonColor),
            )
          ],
        ),
        const Icon(Icons.favorite_border_outlined)
      ],
    );
  }
}