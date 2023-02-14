import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TempleteAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  bool isBlack;
  Color? backGround;
  TempleteAppBar({
    required this.title,
    this.isBlack = true,
    this.backGround = Colors.black,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);
  final String url =
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: backGround,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Get.back();
                      // ZoomDrawer.of(context)!.toggle();
                    },
                    child: Image.asset(
                      "assets/png/temp_icon.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/notifytemp.svg",
                  width: 25,
                  color: isBlack == true ? blackButtonColor : whiteColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => ProfileScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/svg/qr.svg",
                    width: 18,
                    color: isBlack == true ? blackButtonColor : whiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
