//import 'package:flutter_grad_project/features/Blood_Bank/BloodBank/presentation/Screens/presentation/screen/blood_bank.dart';
import 'package:flutter_grad_project/features/profilee/presentation/screen/presentation/screen/profile_screen.dart';
import 'package:go_router/go_router.dart';

//import '../../features/Blood_Bank/inquiry/presentation/screen/inquiry.dart';
//import '../../features/Blood_Bank/otp/presentation/screen/otp.dart';

abstract class AppRouters {
// create  route path variables must start with '/......'
  static const kdefultRoute = '/defaultRoute';
  static const kBloodBankRoute = '/BloodBank';
  static const kinquiryRoute = '/quiry';
  static const kOtpRoute = '/Otp';
  static const kProfileScreenRoute = '/ProfileScreen';

  static final GoRouter router = GoRouter(
    initialLocation: kProfileScreenRoute,
    routes: [
      // GoRoute(
      //   path: kBloodBankRoute,
      //   builder: (context, state) => Blood_Bank(),
      // ),
      // GoRoute(
      //   path: kOtpRoute,
      //   builder: (context, state) => Otp(),
      // ),
      GoRoute(
        path: kProfileScreenRoute,
        builder: (context, state) => ProfileScreen(),
      ),
      // GoRoute(
      //   path: kinquiryRoute,
      //   builder: (context, state) => Inguiry_Screen(),
      // ),
    ],
  );
}
