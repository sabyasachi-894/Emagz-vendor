import 'package:flutter/material.dart';

class ApprovalFormHeading extends StatelessWidget {
  final String tittle;
  bool? isRequired;
  ApprovalFormHeading({Key? key, required this.tittle, this.isRequired = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: tittle,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          children: [
            TextSpan(
                text: isRequired == true ? ' *' : "",
                style: const TextStyle(color: Colors.white, fontSize: 12))
          ]),
    );
  }
}
