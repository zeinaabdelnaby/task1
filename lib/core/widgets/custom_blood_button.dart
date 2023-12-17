import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:go_router/go_router.dart';

class Blood_Button extends StatelessWidget {
  const Blood_Button({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          if (text == "Donation") {
            GoRouter.of(context).pushReplacement(AppRouters
                .kProfileScreenRoute); // Replace with your actual route name
          } else {
            GoRouter.of(context).pushReplacement(AppRouters.kinquiryRoute);
          }
        },
        child: Text(text,
            style: TextStyle(
              color: AppColors.blue,
              fontFamily: "JosefinSans_Bold",
              fontWeight: FontWeight.w400,
              fontSize: 25,
            )));
  }
}
