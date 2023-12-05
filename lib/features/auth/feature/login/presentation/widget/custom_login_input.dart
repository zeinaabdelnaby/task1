
import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_screens_title.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_labeld_textfeild.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/custom_text_button.dart';
import 'package:flutter_grad_project/features/auth/feature/login/presentation/widget/dropdown_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomLoginInput extends StatelessWidget {
  const CustomLoginInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthScreensTitle(title: 'Login !'),
        SizedBox(
          height: 5.h,
        ),
        CustomTextField(
          onChanged: (value) {},
          title: 'national id',
          isPassword: false,
          hintText: '1235897561235789',
          fillColor: Colors.transparent, borderColor: const Color(0xFF0165FC)
        ),
       
        CustomTextField(

            onChanged: (value) {},
            title: 'password',
            isPassword: true,
            hintText: '.................',
            icon: const Icon(Icons.visibility), fillColor: Colors.transparent, borderColor: const Color(0xFF0165FC),),
       
        CustomTextButton(
          onTap: () {GoRouter.of(context).push(AppRouters.kForgetPasswordScreen);},
          text: 'Forgot your password ?',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'type',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromARGB(255, 35, 35, 35),
                fontWeight: FontWeight.w400,
                
              ),
            ),
            const CustomDropDownButton(),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomButton(
          labele: 'Log in',
          onTap: () {},
        ),
      ],
    );
  }
}
