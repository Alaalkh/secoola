import 'package:get/get.dart';
import 'package:secoola/View/ChooseTopic.dart';
import 'package:secoola/View/Course/Continuecourse.dart';
import 'package:secoola/View/Course/Course_complete.dart';
import 'package:secoola/View/Course/Cousre_Details.dart';
import 'package:secoola/View/BottomNavigation/MyCourse.dart';
import 'package:secoola/View/BottomNavigation/HomePage.dart';
import 'package:secoola/View/BottomNavigation/NavigationContent.dart';
import 'package:secoola/View/OnBoarding.dart';
import 'package:secoola/View/Payment_Success.dart';
import 'package:secoola/View/Payment_page.dart';
import 'package:secoola/View/Search/Search_default.dart';
import 'package:secoola/View/Search/Search_result.dart';
import 'package:secoola/View/SplashScreen.dart';
import 'package:secoola/View/SignPages/Verification.dart';

import '../View/SignPages/Login_page.dart';
import '../View/SignPages/NewPassword.dart';
import '../View/SignPages/Reset_password.dart';
import '../View/SignPages/Signin_page.dart';

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
  static String NavigationPage = '/NavigationPage';
  static String MyCourse = '/MyCourse';
  static String CourseDetails = '/CourseDetails';
  static String Paymentpage = '/Paymentpage';
  static String PaymentSuccess = '/PaymentSuccess';
  static String Continuecourse = '/Continuecourse';
  static String Coursecomplete = '/Coursecomplete';
  static String Searchdefault = '/Searchdefault';
  static String Searchresult = '/Searchresult';
}

final getPages = [
  GetPage(
    name: Routes.Splashscreen,
    page: () => const SplachScreen(),
  ),
  GetPage(
    name: Routes.LoginPage,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: Routes.SignPage,
    page: () => const SignPage(),
  ),
  GetPage(
    name: Routes.verification,
    page: () => const VerficicationPage(),
  ),
  GetPage(
    name: Routes.Onboarding,
    page: () => const OnBoarding(),
  ),
  GetPage(
    name: Routes.newpassword,
    page: () => const NewPassword(),
  ),
  GetPage(
    name: Routes.resetpassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: Routes.Chossetopic,
    page: () => const ChooseTopic(),
  ),
  GetPage(
    name: Routes.HomePage,
    page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.NavigationPage,
    page: () => const NavigationContent(),
  ),
  GetPage(name: Routes.MyCourse, page: () => const MyCourse()),
  GetPage(
      name: Routes.CourseDetails,
      page: () => const CourseDetails(),
      transition: Transition.fade),
  GetPage(
      name: Routes.Paymentpage,
      page: () => const Paymentpage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: Routes.PaymentSuccess,
      page: () => const PaymentSuccess(),
      transition: Transition.rightToLeft),
  GetPage(
      name: Routes.Coursecomplete,
      page: () => const Coursecomplete()),
  GetPage(
      name: Routes.Searchdefault,
      page: () => const Searchdefault()),
  GetPage(
      name: Routes.Continuecourse,
      page: () => const Continuecourse()),  GetPage(
      name: Routes.Searchresult,
      page: () => const Searchresult()),
];

// class MyMiddelware extends GetMiddleware {
//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     print(page?.name);
//     return super.onPageCalled(page);
//   }
// }
