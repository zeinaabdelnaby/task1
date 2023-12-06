
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xFF0165FC),
          borderRadius: BorderRadius.all(Radius.circular(200))),
    );
  }
}
