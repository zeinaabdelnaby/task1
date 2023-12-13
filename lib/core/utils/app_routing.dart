import 'package:flutter_grad_project/features/home_test/home_screen.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/widgets/onboarding1.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {

// create  route path variables must start with '/......'
static const kdefultRoute = '/';
static const khometest = '/home';
static const konboarding = '/onboarding';

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
        path: konboarding,
        builder: (context, state) => const Onboarding(),
      ),
      
    ],
  );

}
