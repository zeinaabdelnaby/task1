import 'package:flutter_grad_project/features/explore/home/presentation/screen/home_screen.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/screen/hospitals_screen.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/screen/info_hospital_screen.dart';
import 'package:flutter_grad_project/features/home_test/home_screen.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
// create  route path variables must start with '/......'
  static const kdefultRoute = '/';
  static const khometest = '/home';
  static const khomeScreen = '/homeScreen';
  static const khospitalsScreen = '/hospitalsScreen';
  static const kinfoHospitalScreen = '/InfoHospitalScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kdefultRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: khometest,
        builder: (context, state) => const HomeTestScreen(),
      ),
      GoRoute(
        path: khomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: khospitalsScreen,
        builder: (context, state) => const HospitalsScreen(),
      ),
      GoRoute(
        path: kinfoHospitalScreen,
        builder: (context, state) => InfoHospitalScreen(),
      ),
    ],
  );
}
