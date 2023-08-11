import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Screens/Course/Continuecourse.dart';
import 'package:secoola/Views/Screens/Course/Curriculum.dart';
import 'package:secoola/Views/Screens/Course/DetailsCourse_Review.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(extendBodyBehindAppBar:true,appBar: CustomAppBar(title:  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          child: Container(
            height: 40.h,
            width: 40.w,
            margin: EdgeInsets.only(left: 25.w,bottom: 55.h),
            decoration: BoxDecoration(
                color: const Color(0xfff6bc2a3),
                borderRadius: BorderRadius.circular(12.r)),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xfffffffff),
            ),
          ),
          onTap: () {
            Get.back();
          },
        ),
        GestureDetector(onTap: (){
          // Get.toNamed(Routes.)
        },
          child: Container(
            height: 40.h,
            width: 40.w,
            margin: EdgeInsets.only(left: 222.w),
            decoration: BoxDecoration(
                color: const Color(0xfffccbb64),
                borderRadius: BorderRadius.circular(12.r)),
            child: const Icon(
              Icons.shopping_cart,
              color: white2,
            ),
          ),
        )
      ],
    )
        , backcolor: Colors.transparent),
      backgroundColor: const Color(0xfffffffff),
      body:  SingleChildScrollView(
        child: Column(

          children: [
            Container
              (width: 375.w,height: 360.h,
              decoration: const BoxDecoration(color: yellow),),
            const DetailsReview()],
        ),
      ),
    );
  }
}



