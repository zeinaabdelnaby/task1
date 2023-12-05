
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreensTitle extends StatelessWidget {
  const AuthScreensTitle({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 38.1.sp,
          color: Colors.white,
          
           ),
    );
  }
}
