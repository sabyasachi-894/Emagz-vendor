import 'package:flutter/material.dart';

import '../../../../../constant/colors.dart';

class PreferenceTile extends StatelessWidget {
  final String title;
  bool? isBlue;
  PreferenceTile({Key? key, required this.title, this.isBlue=true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: isBlue == true ? chipColor : whiteColor,
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 25, right: 20),
        dense: true,
        title: Text(
          title,
          style: TextStyle(
              color: isBlue == true ? whiteColor : blackButtonColor,
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Manage your privacy",
          style: TextStyle(
              color: isBlue == true ? whiteColor : blackButtonColor,
              fontSize: 10,
              fontWeight: FontWeight.w500),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: isBlue == true ? whiteAcent : blackButtonColor,
          size: 15,
        ),
      ),
    );
  }
}
