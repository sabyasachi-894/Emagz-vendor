import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';

class UserOnlineCircle extends StatelessWidget {
  const UserOnlineCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?b=1&k=20&m=1307615661&s=170667a&w=0&h=Zp9_27RVS_UdlIm2k8sa8PuutX9K3HTs8xdK0UfKmYk=',
          ),
          maxRadius: 27,
        ),
        Positioned(
            top: 39,
            left: 40,
            child: CircleAvatar(
              radius: 7,
              backgroundColor: whiteColor,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: chatOnlineDot,
              ),
            ))
      ],
    );
  }
}