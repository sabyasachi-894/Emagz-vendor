import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      height: 38,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: lightgrayColor),
      child: Row(
        children: const [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.black54,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Search",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
