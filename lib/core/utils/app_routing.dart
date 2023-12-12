import 'package:flutter_grad_project/features/booking_done/presentation/screen/booking_done_screen.dart';
import 'package:flutter_grad_project/features/home_test/home_screen.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/screen/reservation.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {

// create  route path variables must start with '/......'
static const kdefultRoute = '/';
static const khometest = '/home';
static const kreservationScreen = '/reservationScreen';
static const kbookingDoneScreen = '/bookingDoneScreen';



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
        path: kreservationScreen,
        builder: (context, state) => const ReservationScreen(),
      ),
      GoRoute(
        path: kbookingDoneScreen,
        builder: (context, state) => const BookingDoneScreen(),
      ),
    ],
  );

}
