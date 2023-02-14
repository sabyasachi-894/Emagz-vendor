import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/screens/auth/signin_screen.dart';
import 'package:emagz_vendor/screens/auth/signup_screen.dart';
import 'package:emagz_vendor/screens/common/common_top_bar.dart';
import 'package:emagz_vendor/screens/profile/peronal_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  String url =
      "https://images.unsplash.com/photo-1600600423621-70c9f4416ae9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            const commonTopBar(
              title: 'My Account',
            ),
            const SizedBox(
              height: 15,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 45,
            ),
            Container(
              height: size.height / 1.4,
              // height: double.infinity,
              margin: const EdgeInsets.only(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 45,
                    margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                    child: TabBar(
                      controller: tabController,
                      indicatorPadding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: const Color(0xff1943D8)),
                      labelStyle: TextStyle(
                          color: blackButtonColor,
                          fontWeight: FontWeight.w600,
                          // color: AppColor.blackColor,
                          fontSize: 16),
                      labelColor: Colors.white,
                      unselectedLabelColor: blackButtonColor,
                      unselectedLabelStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16),
                      tabs: const [
                        Tab(
                          text: "Personal",
                        ),
                        Tab(
                          text: "Business",
                        ),
                        // Tab(text: 'Sign Up'),
                      ],
                    ),
                  ),
                  Expanded(
                    // color: Colors.white,
                    // height: 200,
                    child: TabBarView(
                      controller: tabController,
                      children: const [PersonalProfile(), Text("Coming soon")],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
