import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding1.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding2.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const HealthCareConnectionApp());
}

class HealthCareConnectionApp extends StatelessWidget {
  const HealthCareConnectionApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  //   ScreenUtilInit(
  //     designSize: const Size(375, 812),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: (_ , child) {
  //       return MaterialApp.router(
  //         theme: ThemeData.light().copyWith(scaffoldBackgroundColor: const Color(0xffE9E9E9)),
  //     debugShowCheckedModeBanner: false,
  //     routerConfig: AppRouters.router,
  //   );
  // }
  // );
  }
}
