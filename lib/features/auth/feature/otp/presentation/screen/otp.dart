import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/widget/custom_button.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_bg.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/auth_screens_title.dart';
import 'package:flutter_grad_project/features/auth/core/widgets/blurred_container.dart';
import 'package:flutter_grad_project/features/auth/feature/otp/controlers.dart';
import 'package:flutter_grad_project/features/auth/feature/otp/presentation/widget/conferm_resend_message%20_btn.dart';
import 'package:flutter_grad_project/features/auth/feature/otp/presentation/widget/otp_textfeild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const AuthBg(),
          BlurredContainer(
            child: Padding(
              padding: const EdgeInsets.all(26.0).copyWith(top: 0),
              child: ListView(
                children: [
                  const AuthScreensTitle(
                    title: 'OTP Verification',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTPtextFeild(first: true, last: false, controller: c1),
                      OTPtextFeild(first: false, last: false, controller: c2),
                      OTPtextFeild(first: false, last: false, controller: c3),
                      OTPtextFeild(first: false, last: false, controller: c4),
                      OTPtextFeild(first: false, last: false, controller: c5),
                      OTPtextFeild(first: false, last: true, controller: c6),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                   ResendMessageBtn(onTap: (){}),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(labele: 'Verify', onTap: (){getOTPvalues();})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
void getOTPvalues() {
  String otpValues =
      '${c1.text}${c2.text}${c3.text}${c4.text}${c5.text}${c6.text}';
  print('OTP Values: $otpValues');
  
  // Now you can use otpValues as needed
}
}
