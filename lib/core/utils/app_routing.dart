import 'package:flutter_grad_project/features/Blood_Bank/BloodBank/screens/Bloodd_bank/presentation/screen/blood_bank.dart';
import 'package:go_router/go_router.dart';

import '../../features/Blood_Bank/inquiry/presentation/screen/inquiry.dart';
import '../../features/Blood_Bank/otp/presentation/screen/otp.dart';
import '../../features/profilee/screens/Profile/presentation/screen/profile_screen.dart';

abstract class AppRouters {
// create  route path variables must start with '/......'
  static const kdefultRoute = '/';
  static const kBloodBankRoute = '/BloodBank';
  static const kinquiryRoute = '/quiry';
  static const kOtpRoute = '/Otp';
  static const kProfileScreenRoute = '/ProfileScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kBloodBankRoute,
        builder: (context, state) => Blood_Bank(),
      ),
      GoRoute(
        path: kinquiryRoute,
        builder: (context, state) => Inguiry_Screen(),
      ),
      GoRoute(
        path: kOtpRoute,
        builder: (context, state) => Otp(),
      ),
      GoRoute(
        path: kProfileScreenRoute,
        builder: (context, state) => ProfileScreen(),
      ),
    ],
  );
}
