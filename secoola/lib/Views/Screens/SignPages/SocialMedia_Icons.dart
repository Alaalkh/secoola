import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Services/Firebase_Service.dart';
import 'package:secoola/Views/Widgets/IconWidget.dart';
import 'package:secoola/appRoutes.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: ()async{
           await FirebaseService().SignInWithgoogle();
           Get.toNamed(Routes.Chossetopic);
        },
          child: Iconwidget(
              image: Image.asset("assets/search.png"),
              edgeInsets: EdgeInsets.only(left: 33.w, top: 55.h)),

        ),
        GestureDetector(onTap: ()async{
          await FirebaseService().signInWithFacebook();
          Get.toNamed(Routes.Chossetopic);

        },
          child: Iconwidget(
              image: Image.asset("assets/facebook.png"),
              edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h)),
        ),
        Iconwidget(
            image: Image.asset("assets/apple-logo.png"),
            edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h))
      ],
    );
  }
}
