import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_bg.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_screens_title.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/blurred_container.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_labeld_textfeild.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        const AuthBg(),
        BlurredContainer(
          child: Padding(
            padding: const EdgeInsets.all(26.0).copyWith(top: 0),
            child: ListView(children: [
              const AuthScreensTitle(
                title: 'Sign up',
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'national id',
                isPassword: false,
                hintText: '1235897561235789',
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                onChanged: (value) {},
                title: 'password',
                isPassword: true,
                hintText: '.................',
                icon: const Icon(Icons.visibility),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextButton(
                  text: 'alredy have account?',
                  onTap: () {
                    GoRouter.of(context).push(AppRouters.kLoginScreen);
                  }),
              SizedBox(
                height: 8.h,
              ),
              CustomButton(labele: 'Continue', onTap: () {})
            ]),
          ),
        )
      ]),
    );
  }
}
