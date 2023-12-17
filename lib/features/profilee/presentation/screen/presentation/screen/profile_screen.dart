import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/appbar.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/custom_profile_container.dart';
import 'package:flutter_grad_project/features/profilee/presentation/widget/information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgscaffold,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(55), child: appbar()),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: w,
                height: h / 3.1,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20)),
                child: custom_container_profile(),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: h / 1.92,
                width: w,
                decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: information(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
