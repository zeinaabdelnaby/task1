import 'package:flutter_grad_project/features/Blood_Bank/BloodBank/screens/Bloodd_bank/presentation/screen/blood_bank.dart';
import 'package:flutter_grad_project/features/Blood_Bank/inquiry/presentation/screen/inquiry.dart';
import 'package:flutter_grad_project/features/Blood_Bank/Done/presentation/screen/Done_Screen.dart';
import 'package:flutter_grad_project/features/auth/feature/forget_password/presentation/screen/forget_password.dart';
import 'package:flutter_grad_project/features/auth/feature/login/presentation/screen/login_screen.dart';
import 'package:flutter_grad_project/features/auth/feature/otp/presentation/screen/otp.dart';
import 'package:flutter_grad_project/features/auth/feature/sign_up/presintation/screen/sign_up.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/screen/medical_record.dart';
import 'package:flutter_grad_project/features/auth/feature/user_required_data/presentation/screen/user_data_form.dart';
import 'package:flutter_grad_project/features/booking_done/presentation/screen/booking_done_screen.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view/screen/home_screen.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/view/screen/hospitals_screen.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view/screen/info_hospital_screen.dart';
import 'package:flutter_grad_project/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:flutter_grad_project/features/profilee/presentation/screen/presentation/screen/profile_screen.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/screen/reservation.dart';
import 'package:flutter_grad_project/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
// create  route path variables must start with '/......'

  static const kdefultRoute = '/';
  static const khometest = '/home';
  static const konboarding = '/onboarding';

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
  static const kBloodBankRoute = '/BloodBank';
  static const kinquiryRoute = '/quiry';
  static const kDoneRoute = '/Done';
  static const kProfileScreenRoute = '/ProfileScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kdefultRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kBloodBankRoute,
        builder: (context, state) => const BloodBank(),
      ),
      GoRoute(
        path: kDoneRoute,
        builder: (context, state) => const Done_Screen(),
      ),
      GoRoute(
        path: kinquiryRoute,
        builder: (context, state) => const Inguiry_Screen(),
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
          builder: (context, state) {
            final data = state.extra! as Map<String, dynamic>;
            return HospitalsScreen(
              depId: data["depId"],
            );
          }),
      GoRoute(
          path: kinfoHospitalScreen,
          builder: (context, state) {
            int index = state.extra as int;
            return InfoHospitalScreen(
              index: index,
            );
          }),
      GoRoute(
        path: kreservationScreen,
        builder: (context, state) => const ReservationScreen(),
      ),
      GoRoute(
        path: kbookingDoneScreen,
        builder: (context, state) => const BookingDoneScreen(),
      ),
      GoRoute(
        path: konboarding,
        builder: (context, state) => const Onboarding(),
      ),
      GoRoute(
        path: kProfileScreenRoute,
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
  );
}
