import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/widgets/custom_blood_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class container_image extends StatelessWidget {
  const container_image({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColors.blue,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        image_blood(),
      ]),
    );
  }
}
