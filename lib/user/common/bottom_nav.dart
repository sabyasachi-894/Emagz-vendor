import 'dart:ui';

import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/controller/bottom_nav_controller.dart';
import 'package:emagz_vendor/user/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserBottomNavBar extends StatelessWidget {
  const UserBottomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserNavController>(
      init: UserNavController(),
      builder: (value) {
        return Scaffold(
            body: value.screen[value.page],
            bottomNavigationBar: Container(
              height: 60,
              decoration: const BoxDecoration(),
              child: BottomNavigationBar(
                selectedItemColor: blackButtonColor,
                unselectedItemColor: bottomBarIconColor,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle:
                    TextStyle(fontSize: 8, color: blackButtonColor),
                unselectedLabelStyle: TextStyle(fontSize: 8, color: grayColor),
                backgroundColor: Colors.transparent,
                currentIndex: value.page,
                elevation: .0,
                onTap: (i) {
                  value.pageUpdate(i);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: value.page == 0
                          ? Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xff0F0AA4),
                                    Color(0xff2992E3)
                                  ],
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.home_outlined,
                                      color: whiteColor,
                                      size: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(color: whiteColor),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.home_outlined,
                                      color: signInHeading,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: signInHeading,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: value.page == 1
                          ? Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xff0F0AA4),
                                    Color(0xff2992E3)
                                  ],
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: whiteColor,
                                      size: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Bag",
                                    style: TextStyle(color: whiteColor),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: signInHeading,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    "Bag",
                                    style: TextStyle(
                                        color: signInHeading,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: value.page == 2
                          ? Container(
                              margin: const EdgeInsets.only(right: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xff0F0AA4),
                                    Color(0xff2992E3)
                                  ],
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.person_pin,
                                      color: whiteColor,
                                      size: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(color: whiteColor),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              height: 40,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.person_pin,
                                      color: signInHeading,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                        color: signInHeading,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                      label: ""),
                ],
              ),
            ));
      },
    );
  }
}
//   Widget build(BuildContext context) {
//     return GetBuilder<NavController>(
//       init: NavController(),
//       builder: (value) {
//         return Stack(
//           children: [
//             Center(
//               child: value.screen[value.page],
//             ),
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 // alignment: Alignment.center,
//                 height: 55,
//                 margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                 decoration: BoxDecoration(
//                     color: socialBack.withOpacity(.9),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: BottomNavigationBar(
//                   selectedItemColor: blackButtonColor,
//                   unselectedItemColor: bottomBarIconColor,

//                   showSelectedLabels: true,
//                   // currentIndex: value.page,
//                   type: BottomNavigationBarType.fixed,
//                   selectedLabelStyle:
//                       TextStyle(fontSize: 8, color: blackButtonColor),
//                   unselectedLabelStyle:
//                       TextStyle(fontSize: 8, color: grayColor),
//                   backgroundColor: Colors.transparent,
//                   currentIndex: value.page,
//                   elevation: 0.0,
//                   onTap: (i) {
//                     value.pageUpdate(i);
//                   },
//                   items: const [
//                     BottomNavigationBarItem(
//                         icon: Padding(
//                           padding: const EdgeInsets.only(bottom: 5),
//                           child: Icon(
//                             Icons.home_outlined,
//                             size: 28,
//                           ),
//                         ),
//                         label: "Feed"),
//                     BottomNavigationBarItem(
//                         icon: Padding(
//                           padding: const EdgeInsets.only(bottom: 5),
//                           child: Icon(
//                             Icons.search,
//                             size: 28,
//                           ),
//                         ),
//                         label: "Search"),
//                     BottomNavigationBarItem(
//                         icon: Padding(
//                           padding: const EdgeInsets.only(bottom: 5),
//                           child: Icon(
//                             Icons.add,
//                             size: 28,
//                           ),
//                         ),
//                         label: "Create"),
//                     BottomNavigationBarItem(
//                         icon: Padding(
//                           padding: const EdgeInsets.only(bottom: 5),
//                           child: Icon(
//                             Icons.explore_outlined,
//                             size: 28,
//                           ),
//                         ),
//                         label: "Explore"),
//                     BottomNavigationBarItem(
//                         icon: Padding(
//                           padding: const EdgeInsets.only(bottom: 5),
//                           child: Icon(
//                             Icons.chat_bubble_rounded,
//                             size: 28,
//                           ),
//                         ),
//                         label: "Chat"),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
