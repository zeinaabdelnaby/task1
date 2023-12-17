import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_blood_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class custom_appbar_inquiry extends StatelessWidget {
  const custom_appbar_inquiry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgscaffold,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 32.w,
          alignment: Alignment.center,
          height: 32.h,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ], color: AppColors.app, borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouters.kBloodBankRoute);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.capital_text,
              ),
            ),
          ),
        ),
      ),
      title: text_blood(
        colors: AppColors.black,
      ),
      centerTitle: true,
    );
  }
}
