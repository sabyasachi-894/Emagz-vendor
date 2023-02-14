import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../dashboard/dashboard_screen.dart';
import 'drawer_menu_screen.dart';

class ZoomDrawerScreen extends StatefulWidget {
  const ZoomDrawerScreen({Key? key}) : super(key: key);

  @override
  State<ZoomDrawerScreen> createState() => _ZoomDrawerScreenState();
}

class _ZoomDrawerScreenState extends State<ZoomDrawerScreen> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        // menuScreenTapClose: true,
        mainScreenTapClose: true,
        menuBackgroundColor: Colors.black,
        controller: _drawerController,
        mainScreenScale: .25,
        style: DrawerStyle.defaultStyle,
        menuScreen: const DrawerMenuScreen(),
        mainScreen: const DashBordScreen(),
        borderRadius: 24.0,
        angle: 0.0,
        slideWidth: MediaQuery.of(context).size.width * .35,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
