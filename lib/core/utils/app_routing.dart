import 'package:flutter_grad_project/features/auth/feature/login/presentation/screen/login_screen.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {

// create  route path variables must start with '/......'
static const kdefultRoute = '/';
static const kLoginScreen = '/LoginScreen';

 static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kdefultRoute,
        builder: (context, state) => const SplashScreen(),
      ),
       GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      
    ],
  );

}
