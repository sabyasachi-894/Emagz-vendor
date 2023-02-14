import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteAndLocateWidget extends StatelessWidget {
  bool isWhite;
  FavouriteAndLocateWidget({Key? key, this.isWhite = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 45,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              border: Border.all(
                  color: isWhite == true ? whiteColor : blackButtonColor)),
          child: Text(
            "Favourite",
            style: GoogleFonts.inter(
                color: isWhite == true ? whiteColor : blackButtonColor,
                fontSize: 16,
                // height: 1.4,
                fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: isWhite == true ? whiteColor : blackButtonColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Locate us",
                style: GoogleFonts.inter(
                    color: isWhite == true ? whiteColor : blackButtonColor,
                    fontSize: 16,
                    // height: 1.4,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
