import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/widgets/custom_blood_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class custom_appbar extends StatelessWidget {
  custom_appbar({
    required this.icons,
  });
  late IconData icons;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blue,
      leading: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(2, 3),
                )
              ]),
          child: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(
                icons,
                size: 22.sp,
                color: AppColors.capital_text,
              ),
            ),
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouters.khomeScreen);
            },
          ),
        ),
      ),
      title: text_blood(
        colors: AppColors.white,
      ),
      centerTitle: true,
    );
  }
}
