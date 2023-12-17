import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/widgets/custom_blood_button.dart';

class Custom_container extends StatelessWidget {
  const Custom_container({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: h / 10,
      width: w / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Blood_Button(
            text: 'Donation',
          ),
          Container(
            height: 100,
            width: 2,
            decoration: const BoxDecoration(
              color: AppColors.blue,
            ),
          ),
          Blood_Button(text: "Enquiry")
        ],
      ),
    );
  }
}
