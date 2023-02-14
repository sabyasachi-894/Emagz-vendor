import 'package:emagz_vendor/constant/colors.dart';
import 'package:emagz_vendor/user/common/user_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreenUser extends StatefulWidget {
  const NotificationScreenUser({Key? key}) : super(key: key);

  @override
  State<NotificationScreenUser> createState() => _NotificationScreenUserState();
}

class _NotificationScreenUserState extends State<NotificationScreenUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UserNotificationTopBar(title: "Notification"),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    color: Colors.red,
                    child: Slidable(
                        key: const ValueKey(0),
                        endActionPane: const ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            // A SlidableAction can have an icon and/or a label.
                            SlidableAction(
                              // padding: EdgeInsets.only(left: 10),
                              flex: 1,
                              onPressed: null,
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.close,
                              // label: 'Delete',
                            ),
                          ],
                        ),
                        child: Container(
                          height: 65,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // border: Border(
                            //     top: BorderSide(
                            //       color: grayColor,
                            //       width: 1,
                            //     ),
                            //     bottom: BorderSide(
                            //       color: grayColor,
                            //       width: 1,
                            //     )),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti amet sit mattis sapien viverra augue quam. Senectus nibh quam vulputate et. Magna turpis mattis a id. Netus donec quisque lacus imperdiet. Egestas eget elit etiam.",
                            style: TextStyle(
                                color: blackButtonColor,
                                letterSpacing: .01,
                                fontWeight: FontWeight.w500,
                                fontSize: 9.9),
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class UserNotificationTopBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;
  const UserNotificationTopBar({
    required this.title,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, right: 10, left: 10),
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
                Text(
                  title,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Row(
            children: [
              //
              SvgPicture.asset(
                "assets/svg/Notify.svg",
                width: 40,
                color: blackButtonColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
