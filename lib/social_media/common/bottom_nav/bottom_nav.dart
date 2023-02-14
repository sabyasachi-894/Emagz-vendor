import 'dart:ui';

import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/social_media/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
      init: NavController(),
      builder: (value) {
        return Scaffold(
            body: value.screen[value.page],
            bottomNavigationBar: Container(
              // alignment: Alignment.center,
              height: 55,
              // margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: socialBack.withOpacity(.9),
                // borderRadius: BorderRadius.circular(15),
              ),
              child: BottomNavigationBar(
                selectedItemColor: blackButtonColor,
                unselectedItemColor: bottomBarIconColor,

                showSelectedLabels: true,
                // currentIndex: value.page,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle:
                    TextStyle(fontSize: 8, color: blackButtonColor),
                unselectedLabelStyle: TextStyle(fontSize: 8, color: grayColor),
                backgroundColor: Colors.transparent,
                currentIndex: value.page,
                elevation: 0.0,
                onTap: (i) {
                  value.pageUpdate(i);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.home_outlined,
                          size: 28,
                        ),
                      ),
                      label: "Feed"),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.search,
                          size: 28,
                        ),
                      ),
                      label: "Search"),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.add,
                          size: 28,
                        ),
                      ),
                      label: "Create"),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.explore_outlined,
                          size: 28,
                        ),
                      ),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.chat_bubble_rounded,
                          size: 28,
                        ),
                      ),
                      label: "Chat"),
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
