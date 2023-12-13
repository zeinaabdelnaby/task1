import 'package:flutter_grad_project/features/auth/feature/forget_password/presentation/screen/forget_password.dart';
import 'package:flutter_grad_project/features/auth/feature/login/presentation/screen/login_screen.dart';
import 'package:flutter_grad_project/features/auth/feature/otp/presentation/screen/otp.dart';
import 'package:flutter_grad_project/features/auth/feature/sign_up/presintation/screen/sign_up.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/screen/medical_record.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/screen/user_data_form.dart';
import 'package:flutter_grad_project/features/booking_done/presentation/screen/booking_done_screen.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/screen/home_screen.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/screen/hospitals_screen.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/screen/info_hospital_screen.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/screen/reservation.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
// create  route path variables must start with '/......'

  static const kdefultRoute = '/';
  static const kreservationScreen = '/reservationScreen';
  static const kbookingDoneScreen = '/bookingDoneScreen';
  static const kLoginScreen = '/LoginScreen';
  static const kSigninScreen = '/SigninScreen';
  static const kForgetPasswordScreen = '/forgetPasswordScreen';
  static const kOTPScreen = '/OtpScreen';
  static const kUserDataFormScreen = '/UserDataFormScreen';
  static const kMedicalRecordScreen = '/MedicalRecordScreen';
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
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kSigninScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: kForgetPasswordScreen,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: kOTPScreen,
        builder: (context, state) => const OTPScreen(),
      ),
      GoRoute(
        path: kUserDataFormScreen,
        builder: (context, state) => const UserDataForm(),
      ),
      GoRoute(
        path: kMedicalRecordScreen,
        builder: (context, state) => const MedicalRecord(),
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
