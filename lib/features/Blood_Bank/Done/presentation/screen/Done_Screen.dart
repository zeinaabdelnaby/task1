import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/core/widgets/custom_appbar.dart';
import 'package:flutter_grad_project/core/widgets/custom_container.dart';
import 'package:flutter_grad_project/core/widgets/custom_container_image.dart';
import 'package:flutter_grad_project/features/Blood_Bank/BloodBank/screens/dialog.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_labeld_textfeild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Done_Screen extends StatelessWidget {
  const Done_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.bgscaffold,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: custom_appbar(
              icons: Icons.arrow_back_ios,
            )),
        body: ListView(
          children: [
            Column(children: [
              container_image(w: w, h: h),
              Custom_container(h: h, w: w),
              SizedBox(
                height: 80.h,
              ),
              CustomTextField(
                  onChanged: (value) {},
                  title: 'national id',
                  isPassword: false,
                  hintText: '0987657643233212',
                  fillColor: Colors.transparent,
                  borderColor: const Color(0xFF0165FC)),
              SizedBox(
                height: 80.h,
              ),
              CustomButton(
                labele: 'Apply Request',
                onTap: () {
                  dialog(context, h, w);
                },
              ),
              SizedBox(
                height: 50.h,
              )
            ]),
          ],
        ));
  }
}
