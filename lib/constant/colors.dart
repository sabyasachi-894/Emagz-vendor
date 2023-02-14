import 'package:flutter/material.dart';
import 'dart:math' as math;

LinearGradient myGradient = const LinearGradient(
    // end: Alignment.topRight,
    // begin: Alignment.bottomLeft,
    begin: Alignment(-0.8, 1.4),
    end: Alignment(0.8, -1.4),
    colors: [
      Color(0xff0F0AA4),
      // Color(0xff0F0AA4),
      Color(0xff2992E3),
    ]);
LinearGradient redGradient = const LinearGradient(
    end: Alignment.topRight,
    begin: Alignment.bottomLeft,
    colors: [
      Color(0xffCC0022),
      Color(0xffFF8DB6),
    ]);
LinearGradient orangeGradient = const LinearGradient(
    end: Alignment.topRight,
    begin: Alignment.bottomLeft,
    colors: [
      Color(0xffFFBE4E),
      Color(0xffE35B00),
    ]);
LinearGradient greenGradient = const LinearGradient(
    end: Alignment.topRight,
    begin: Alignment.bottomLeft,
    colors: [
      Color(0xff46F2DB),
      Color(0xff00A498),
    ]);

LinearGradient authGradient = const LinearGradient(
  begin: Alignment(-0.3, 1),
  end: Alignment(0.3, -1),
  colors: [
    Color(0xFF020AFF),
    Color(0xFF23A3FF),
    Color(0xFF2489D2),
    Color(0xFF020EFF)
  ],
  stops: [-0.082, 0.3136, 0.6848, 0.9257],
  transform: GradientRotation(7843 * (math.pi / 6000)),
);
LinearGradient pinkGradient = LinearGradient(
    end: Alignment.topLeft,
    begin: Alignment.bottomRight,
    colors: [
      darkPink,
      darkPinkAcent,
    ]);

LinearGradient buttonGradient = const LinearGradient(
  begin: Alignment(-0.8, 1.4),
  end: Alignment(0.8, -1.4),
  colors: [
    Color(0xFF020AFF),
    Color(0xFF23A3FF),
    Color(0xFF2489D2),
    Color(0xFF020EFF)
  ],
  stops: [-0.082, 0.4, 0.6848, 0.9257],
  transform: GradientRotation(7843 * (math.pi / 10000)),
);

Color blueColor = const Color(0xff0E37C8);
Color grayColor = const Color(0xffD2D2D2);
Color borderColor = const Color(0xffB5B5B5);
Color lightgrayColor = const Color(0xffEFEFEF);
Color lightgrayAcent = const Color(0xffECECEC);
Color blueButtonColor = const Color(0xff3C83E6);
Color blackButtonColor = const Color(0xff000000);
Color signInHeading = const Color(0xff666666);
Color headingColor = const Color(0xff515151);
Color whiteColor = Colors.white;

Color darkBlue = const Color(0xff0F0AA4);
Color darkBlueAcent = const Color(0xff2992E3);
Color darkYellow = const Color(0xffFFBE4E);
Color darkYellowAcent = const Color(0xffE35B00);
Color darkPink = const Color(0xffCC0022);
Color darkPinkAcent = const Color(0xffFF8DB6);
Color darkGreen = const Color(0xff46F20B);
Color darkGreenAcent = const Color(0xff00A491);
Color lightBlue = const Color(0xff5ACFF9);
Color lightBlueAcent = const Color(0xff298501);
Color unselectedLabel = const Color(0xff999999);
Color productColor = const Color(0xffABB3FF);
Color orderHeadingColor = const Color(0xff141414);

Color pendingColor = const Color(0xff2D5423);
Color cancledColor = const Color(0xffFF0707);
Color dispatchColor = const Color(0xff3918FF);
Color deliverColor = const Color(0xff1731BA);
Color recpayment = const Color(0xff1731BA);
Color tempOneGray = const Color(0xff454545);
Color tempOneSliderback = const Color(0xffE6E6E6);
Color tempStarColor = const Color(0xffF1AC26);
Color profileGray = const Color(0xffF3F3F3);
// Color lightBlueAcent = const Color(0xff020eff);

// Social Media

Color socialBack = const Color(0xffE7E9FE);
Color chipColor = const Color(0xff3A0DBB);
Color purpleColor = const Color(0xff3A0DBB);
Color chatOnlineDot = const Color(0xff1E6B17);
Color bottomBarIconColor = const Color(0xff959292);
Color chatContainer = const Color(0xffEEEEEE);
Color accountGray = const Color(0xff646464);
Color selectionButton = const Color(0xffEBEBEB);
Color orderDetailBorder = const Color(0xffE9E9E9);
Color orderDetailsGreen = const Color(0xff139A31);
Color black = const Color(0xff333333);
Color inVoiceBlue = const Color(0xff1943D8);
Color whiteAcent = const Color(0xffF5F5F5);
Color blackShaded = const Color(0xff232323);
Color toggleInactive = const Color(0xff959595);

Color templeteTwo = const Color(0xffFFEAEA);
Color templeteFiveDivider = const Color(0xffF9F9F9);
Color templeteEightHeading = const Color(0xff626262);

String imageUrlOne =
    "https://images.unsplash.com/photo-1600600423621-70c9f4416ae9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80";
String imageUrlTwo =
    "https://images.unsplash.com/photo-1611608423267-be0a59d85df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbiUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
String imageUrlThree =
    "https://images.unsplash.com/photo-1614203586524-fee58ef9ef90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFuJTIwaW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
String imageUrlFour =
    "https://images.unsplash.com/photo-1635530027421-b793c5c8d045?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNvdXJjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
String shoeOne =
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
String shoeTwo =
    "https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
String houseImage =
    "https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
String speakerImage =
    "https://images.unsplash.com/photo-1608538770329-65941f62f9f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BlYWtlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
String mountainImage =
    "https://images.unsplash.com/photo-1587579531524-f31144f0cb85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE4fHxtb3VudGFpbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
String wallImage =
    "https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGFyayUyMHdhbGwlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";

List templateFiveImage = [
  'https://images.unsplash.com/photo-1588731234159-8b9963143fca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFuc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1542847970-584270eb111b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];
List foodImage = [
  'https://images.unsplash.com/photo-1613564834361-9436948817d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1601924582970-9238bcb495d9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1541745537411-b8046dc6d66c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1593504049359-74330189a345?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
];
