import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarRow extends StatelessWidget {
  const StarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          "4.8",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
              fontFamily: 'JosefinSans_Bold'),
        ),
        Image.asset("assets/images/star.png")
      ],
    );
  }
}
