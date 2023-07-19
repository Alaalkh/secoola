import 'package:get/get.dart';
import 'package:secoola/App/ChooseTopic.dart';
import 'package:secoola/App/HomePage.dart';
import 'package:secoola/App/OnBoarding.dart';
import 'package:secoola/App/SplashScreen.dart';
import 'package:secoola/App/Verification.dart';

import '../App/Login_page.dart';
import '../App/NewPassword.dart';
import '../App/Reset_password.dart';
import '../App/Signin_page.dart';


class Routes {
  static String Splashscreen = '/Splashscreen';
  static String LoginPage = '/LoginPage';
  static String SignPage = '/SignPage';
  static String verification = '/verification';
  static String Onboarding = '/Onboarding';
  static String newpassword = '/newpassword';
  static String resetpassword = '/resetpassword';
  static String Chossetopic = '/Chossetopic';
  static String HomePage = '/HomePage';

}


final getPages = [
  GetPage(
    name: Routes.Splashscreen,
    page: () => const SplachScreen(),
  ),
  GetPage(
    name: Routes.LoginPage,
    page: () => const LoginPage(),

  ),  GetPage(
    name: Routes.SignPage,
    page: () => const SignPage(),
  ),  GetPage(
    name: Routes.verification,
    page: () => const VerficicationPage(),
  ),  GetPage(
    name: Routes.Onboarding,
    page: () => const OnBoarding(),
  ),GetPage(
    name: Routes.newpassword,
    page: () => const NewPassword(),

  ),GetPage(
    name: Routes.resetpassword,
    page: () => const ResetPassword(),
  ),GetPage(
    name: Routes.Chossetopic,
    page: () => const ChooseTopic(),
  ),
  GetPage(
    name: Routes.HomePage,
    page: () => const HomePage(),
  ),
];

// class MyMiddelware extends GetMiddleware {
//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     print(page?.name);
//     return super.onPageCalled(page);
//   }
// }