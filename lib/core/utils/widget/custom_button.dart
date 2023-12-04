
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.labele,
    required this.onTap,
  });

  final String labele;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFF3585FF)),
        width: 332.w,
        height: 49.h,
        child: Text(labele,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
