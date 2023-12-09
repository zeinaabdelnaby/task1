import 'package:flutter/material.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "JosefinSans_SemiBold",
          fontWeight: FontWeight.w400,
          fontSize: 16),
    );
  }
}