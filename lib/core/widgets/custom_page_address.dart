import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/widgets/custom_rawMaterialButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageAddress extends StatelessWidget {
  const CustomPageAddress({super.key, required this.icon, required this.add});

  final IconData icon;
  final String add;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRawMaterialButton(
          icon: icon,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 46.w),
          child: Text(
            add,
            style:  TextStyle(
                fontFamily: "JosefinSans_SemiBold",
                fontSize: 20.sp,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
