import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class PersonalProfileSetup extends StatelessWidget {
  PersonalProfileSetup({Key? key}) : super(key: key);

  @override
  int value = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/png/social_back.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              height: 260,
              width: size.width,
              decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                    color: blackButtonColor.withOpacity(.15),
                    blurRadius: 6,
                    offset: const Offset(
                      2,
                      6,
                    ),
                    spreadRadius: 1)
              ], borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Setup your profile",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Display Name",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 40,
                    child: TextFormField(
                      // controller: controller,
                      // maxLines: maxLines,
                      cursorColor: grayColor,
                      // keyboardType: TextInputType.n,
                      // autofocus: true,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color(
                              0xff818181,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 9),
                        fillColor: const Color(0xffF1F1F1),
                        hintText: "",
                        filled: true,
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: lightgrayColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightgrayColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: chipColor,
                        // border: Border.all(
                        //   color: (value == index) ? chipColor : Colors.black,
                        // ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Choose Template",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
