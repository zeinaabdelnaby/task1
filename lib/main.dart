import 'package:flutter/material.dart';
import 'package:flutter_grad_project/core/database/cache_helper.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(const HealthCareConnectionApp());
}

class HealthCareConnectionApp extends StatelessWidget {
  const HealthCareConnectionApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor: const Color(0xffE9E9E9),
                textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                        fontFamily: 'josefinSans', color: Colors.black))),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouters.router,
          );
        });
  }
}
