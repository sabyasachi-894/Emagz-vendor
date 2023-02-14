import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class BusinessAccount extends StatefulWidget {
  const BusinessAccount({Key? key}) : super(key: key);

  @override
  State<BusinessAccount> createState() => _BusinessAccountState();
}

class _BusinessAccountState extends State<BusinessAccount> {
  int value = 2;
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
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 25),
              height: 350,
              width: size.width,
              decoration: BoxDecoration(boxShadow: [
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
                    "Let’s Get Started",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Customise your profile",
                    style: TextStyle(
                        color: accountGray,
                        fontSize: 7,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Edit user name",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 35,
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
                        fillColor: Color(0xffF1F1F1),
                        hintText: "Nakul_kumar8",
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
                  Text(
                    "Select account type",
                    style: TextStyle(
                        color: blackButtonColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: customRadioButton("Personal Account", 1)),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(child: customRadioButton("Business Account", 2)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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
                      "Continue",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Go with default theme",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: accountGray,
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

  Widget customRadioButton(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        height: 30,
        decoration: BoxDecoration(
            color: (value == index) ? chipColor : selectionButton,
            // border: Border.all(
            //   color: (value == index) ? chipColor : Colors.black,
            // ),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: TextStyle(
              color: (value == index)
                  ? whiteColor
                  : blackButtonColor.withOpacity(.5),
              fontSize: 9,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
