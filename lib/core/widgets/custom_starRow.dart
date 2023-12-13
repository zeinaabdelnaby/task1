import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  const StarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "4.8",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              fontFamily: 'JosefinSans_Bold'),
        ),
        Image.asset("assets/images/star.png")
      ],
    );
  }
}
