import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/cs/crousel_slider.dart';
import 'package:emagz_vendor/screens/auth/common_auth_screen.dart';
import 'package:emagz_vendor/screens/support/support_screen.dart';
import 'package:emagz_vendor/social_media/screens/account/business_account.dart';
import 'package:emagz_vendor/social_media/screens/account/business_account_confirmation.dart';
import 'package:emagz_vendor/social_media/screens/account/business_profile_setup.dart';
import 'package:emagz_vendor/social_media/screens/account/personal_account.dart';
import 'package:emagz_vendor/social_media/screens/account/personal_profile_setup.dart';
import 'package:emagz_vendor/social_media/screens/notification/notification_screen.dart';
import 'package:emagz_vendor/social_media/screens/profile_insight/personal_profile_insight_screen.dart';
import 'package:emagz_vendor/social_media/screens/settings/personal_page/personal_page_setting.dart';
import 'package:emagz_vendor/social_media/screens/settings/privacy/privacy_setting_screen.dart';
import 'package:emagz_vendor/templates/business_template/screens/default_business_template.dart';
import 'package:emagz_vendor/templates/personal_template/p_template_one_screen.dart';
import 'package:emagz_vendor/templates/personal_template/p_template_two_screen.dart';
import 'package:emagz_vendor/templates/screens/template_eight.dart';
import 'package:emagz_vendor/templates/screens/template_five.dart';
import 'package:emagz_vendor/templates/screens/template_four.dart';
import 'package:emagz_vendor/templates/screens/template_nine.dart';
import 'package:emagz_vendor/templates/screens/template_one.dart';
import 'package:emagz_vendor/templates/screens/template_seven.dart';
import 'package:emagz_vendor/templates/screens/template_six.dart';
import 'package:emagz_vendor/templates/screens/template_ten.dart';
import 'package:emagz_vendor/templates/screens/template_two.dart';
import 'package:emagz_vendor/templates/screens/templete_three.dart';
import 'package:emagz_vendor/user/screens/order/order_details.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social_media/controller/bottom_nav_controller.dart';
import 'social_media/screens/settings/comments/comment_setting_screen.dart';

void main() {
  Get.put(NavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eMAGZ',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // home: PTemplateTwoScreen(),
      // home: TemplateFiveScreen(),
      //home: DefaultBusinesstempScreen(),
     home: PersonalProfileInsightScreen(),
      //  home: SupportScreen(),
     // home: CommonAuthScreen(),
      // home: SocialNotificationScreen(),
    );
  }
}
