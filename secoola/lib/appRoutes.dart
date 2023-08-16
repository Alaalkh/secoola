import 'package:get/get.dart';
import 'package:secoola/Views/Screens/AccountPages/Faq_page.dart';
import 'package:secoola/Views/Screens/AccountPages/NotificationPage.dart';
import 'package:secoola/Views/Screens/Course/CartPage.dart';
import 'package:secoola/Views/Screens/Topics/ChooseTopic.dart';
import 'package:secoola/Views/Screens//Course/Continuecourse.dart';
import 'package:secoola/Views/Screens/Course/Course_complete.dart';
import 'package:secoola/Views/Screens/Course/Cousre_Details.dart';
import 'package:secoola/Views/Screens/Mycourse/MyCourse.dart';
import 'package:secoola/Views/Screens/Home/HomePage.dart';
import 'package:secoola/Views/Screens/BottomNavigation/NavigationContent.dart';
import 'package:secoola/Views/Screens/Onboarding/OnBoarding.dart';
import 'package:secoola/Views/Screens/Transaction/Payment_Success.dart';
import 'package:secoola/Views/Screens/Transaction/Payment_page.dart';
import 'package:secoola/Views/Screens/Search/Search_default.dart';
import 'package:secoola/Views/Screens/Search/Search_result.dart';
import 'package:secoola/Views/Screens/SignPages/Login_page.dart';
import 'package:secoola/Views/Screens/Splashscreen/SplashScreen.dart';
import 'package:secoola/Views/Screens/ForgotPassword/Verification.dart';

import 'Views/Screens/ForgotPassword/NewPassword.dart';
import 'Views/Screens/ForgotPassword/Reset_password.dart';
import 'Views/Screens/SignPages/Signin_page.dart';

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
  static String NotificationPage = '/NotificationPage';
  static String FaqPage = '/FaqPage';
  static String CartPage = '/CartPage';
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
  GetPage(name: Routes.Coursecomplete, page: () => const Coursecomplete()),
  GetPage(name: Routes.Searchdefault, page: () => const Searchdefault()),
  GetPage(name: Routes.Continuecourse, page: () => const Continuecourse()),
  GetPage(name: Routes.Searchresult, page: () => const Searchresult()),
  GetPage(
      name: Routes.NotificationPage,
      page: () => const NotificationPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: Routes.FaqPage,
      page: () => FaqPage(),
      transition: Transition.rightToLeft),  GetPage(
      name: Routes.CartPage,
      page: () => CartPage(),
      transition: Transition.rightToLeft),
];

// class MyMiddelware extends GetMiddleware {
//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     print(page?.name);
//     return super.onPageCalled(page);
//   }
// }
