import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_bg.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_screens_title.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/blurred_container.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_labeld_textfeild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        const AuthBg(),
          BlurredContainer(
          child: Padding(
            padding: const EdgeInsets.all(26.0).copyWith(top: 0),
            child: ListView(children: [
              const AuthScreensTitle(
                title: 'Forgot Password',
              ),
               Text('Enter your email account to reset your password',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500),),
              SizedBox(
                height: 30.h,
              ),
               CustomTextField(
                onChanged: (value) {},
                title: 'Email',
                isPassword: false,
                hintText: 'example@email.com',
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(labele: 'Send Code', onTap: (){GoRouter.of(context).push(AppRouters.kOTPScreen);})
      ])))
        ],
      ),
    );
  }
}