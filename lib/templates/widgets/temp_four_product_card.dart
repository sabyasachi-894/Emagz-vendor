import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/strings.dart';

class TemplateFourproductCard extends StatelessWidget {
  final String imgUrl;
  const TemplateFourproductCard({Key? key, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 230,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // height: 100,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Name",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: blackButtonColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: tempStarColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: tempStarColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: tempStarColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: tempStarColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: grayColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "\$25",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: blackButtonColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                dummyText,
                textAlign: TextAlign.justify,
                style: GoogleFonts.inter(
                    color: blackButtonColor,
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossA,
                    children: [
                      Text(
                        "-",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "01",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 12,
                            height: 1.5,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Add to\ncart",
                        style: TextStyle(
                            color: blackButtonColor,
                            fontSize: 10,
                            height: 1,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
