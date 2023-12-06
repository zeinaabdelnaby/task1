import 'package:flutter/material.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/true_or_false_radioButton.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/widget/input_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quistions extends StatelessWidget {
  const Quistions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.all(15.0.sp).copyWith(bottom: 0.sp),
          child:
           Text('Do you suffer from blood pressure?',
              style: TextStyle(color: Colors.black, fontSize: 18.sp)),
        ),
        const CustomRadioButton(value1: 'true',value2: 'false'),
        const InputDetails(),
      ]),
    );
  }
}
