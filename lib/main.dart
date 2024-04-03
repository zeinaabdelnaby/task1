import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/api/dio_consumer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/api/dio_consumer.dart';
import 'package:flutter_grad_project/core/database/cache_helper.dart';
import 'package:flutter_grad_project/features/explore/home/data/repo/home_repo.dart';
import 'package:flutter_grad_project/core/services/services_locator.dart';
import 'package:flutter_grad_project/core/utils/app_routing.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view_model/home_cubit/home_cubit.dart';
import 'package:flutter_grad_project/features/explore/hospitals/data/repo/hospitals_repo.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/view_model/hospitals_cubit.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/repo/hospital_repo.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view_model/hospital_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  setupServiceLocator();
  runApp(const HealthCareConnectionApp());
}

class HealthCareConnectionApp extends StatelessWidget {
  const HealthCareConnectionApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                HospitalsCubit(HospitalsRepository(DioConsumer(dio: Dio()))),
          ),
           BlocProvider(
            create: (context) =>
                HomeCubit(HomeRepository(DioConsumer(dio: Dio()))),
          ),
           BlocProvider(
            create: (context) =>
                HospitalCubit(HospitalRepository(DioConsumer(dio: Dio()))),
          ),
        ],
   child:  ScreenUtilInit(
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
        }));
  }
}