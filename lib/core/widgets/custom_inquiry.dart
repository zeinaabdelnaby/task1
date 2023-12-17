import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class custom_inquiry extends StatelessWidget {
  const custom_inquiry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      color: AppColors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Id",
            style: style(),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              "Name",
              style: style(),
            ),
          ),
          Text(
            "Amount",
            style: style(),
          ),
          Text(
            "Location",
            style: style(),
          )
        ],
      ),
    );
  }

  TextStyle style() {
    return TextStyle(
      color: AppColors.white,
      fontFamily: "JosefinSans_Regular",
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
  }
}
