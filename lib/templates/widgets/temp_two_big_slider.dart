import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductBigSlider extends StatelessWidget {
  final String imgUrl;
  const ProductBigSlider({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: 240,
            height: 350,
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 250,
            left: 33,
            child: Container(
              height: 150,
              width: 190,
              padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
              decoration: BoxDecoration(
                color: templeteTwo,
                border: Border.all(width: 5, color: whiteColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: tempStarColor,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: tempStarColor,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: tempStarColor,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: tempStarColor,
                        size: 8,
                      ),
                      Icon(
                        Icons.star,
                        color: grayColor,
                        size: 8,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  Text(
                    "Product 01",
                    style: GoogleFonts.inter(
                        color: Color(0xff424242),
                        fontSize: 15,
                        // height: 1.8,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum augue amet, mi tellus proin ornare quam fermentum neque. Risus amet, commodo eget viverra ornare magna. Non dictumst purus felis ridiculus mi scelerisque mauris nisl, dui.",
                    style: GoogleFonts.inter(
                        color: Color(0xff424242),
                        fontSize: 6,
                        height: 1.5,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "\$250.00",
                    style: GoogleFonts.inter(
                        color: const Color(0xff424242),
                        fontSize: 15,
                        // height: 1.8,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}