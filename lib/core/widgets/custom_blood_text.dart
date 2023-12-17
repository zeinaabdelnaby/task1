import 'package:flutter/material.dart';

class text_blood extends StatelessWidget {
  text_blood({super.key, required this.colors});
  late Color colors;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Blood Donation",
      style: TextStyle(
        color: colors,
        fontFamily: " JosefinSans_Regular",
        fontWeight: FontWeight.w400,
        fontSize: 25,
      ),
    );
  }
}
