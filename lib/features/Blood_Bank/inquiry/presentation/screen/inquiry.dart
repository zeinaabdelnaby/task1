import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_colors.dart';
import 'package:flutter_grad_project/core/widgets/custom_inquiry.dart';
import 'package:flutter_grad_project/core/widgets/custom_inquiry_appbar.dart';
import 'package:flutter_grad_project/core/widgets/custom_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Inguiry_Screen extends StatelessWidget {
  const Inguiry_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.bgscaffold,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: custom_appbar_inquiry()),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20.h,
            ),
            custom_inquiry(),
            custom_list()
          ]),
        ));
  }
}
