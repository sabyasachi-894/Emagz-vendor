
import 'package:emagz_vendor/screens/choise/e_business_screen.dart';
import 'package:emagz_vendor/screens/choise/e_magz_screen.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FlipCardScreen extends StatelessWidget {
  FlipCardScreen({Key? key}) : super(key: key);
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      key: cardKey,
      flipOnTouch: true,
      fill: Fill.fillBack,
      front: EbusinessScreen(
        key: cardKey,
      ),
      back: EmagzScreen(
        key: cardKey,
      ),
    );
  }
}
