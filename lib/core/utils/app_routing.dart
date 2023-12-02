import 'package:flutter_grad_project/features/home_test/home_screen.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {

// create  route path variables must start with '/......'
static const kdefultRoute = '/';
static const khometest = '/home';

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
      
    ],
  );

}
