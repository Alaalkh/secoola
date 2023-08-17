import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Views/Screens/Mycourse/CurriculumTab.dart';
import 'package:secoola/Views/Screens/Mycourse/Reviewcourse.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class Continuecourse extends StatelessWidget {
  const Continuecourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  margin: EdgeInsets.only(left: 25.w, bottom: 55.h),
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
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.CartPage);
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
          ),
          backcolor: Colors.transparent),
      backgroundColor: Color(0xFFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 360.h,
              decoration: const BoxDecoration(color: yellow),
            ),
            CourseReview()
          ],
        ),
      ),
    );
  }
}

class CourseReview extends StatefulWidget {
  const CourseReview({super.key});

  @override
  State<CourseReview> createState() => _CourseReviewState();
}

class _CourseReviewState extends State<CourseReview>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 11.h),
      width: 375.w,
      height: 956.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: const Color(0xFFFFFFFFF),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.w, top: 11.h),
            child: Text(
              "Design Thingking Fundamental",
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 11.h),
                child: const Icon(
                  Icons.person,
                  color: Color(0xff00A9B7),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 7.w, top: 11.h),
                  child: Text(
                    "Halo Academy",
                    style: TextStyle(
                        color: const Color(
                          0xfff00A9B7,
                        ),
                        fontSize: 16.sp),
                  )),
              Container(
                margin: EdgeInsets.only(left: 100.w, top: 11.h),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/star.png",
                      scale: 33,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(fontSize: 16.sp),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 13.h),
                child: SizedBox(
                  width: 335.w,
                  height: 63.h,
                  child: Text(
                    "Description this is a simple description that explain the description about the class or blabla bla and then blablabla of course.",
                    style: TextStyle(
                        color: const Color(0xfffA9AEB2), fontSize: 16.sp),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 22.h),
                child: Text(
                  "Students",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffA9AEB2)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 105.w, top: 22.h),
                child: Text(
                  "Language",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffA9AEB2)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 4.h),
                child: Text(
                  "143.247",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 104.w, top: 4.h),
                child: Text(
                  "English",
                  style: TextStyle(fontSize: 16.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 22.h),
                child: Text(
                  "Last update",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffA9AEB2)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 88.w, top: 22.h),
                child: Text(
                  "Subtitle",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffA9AEB2)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 4.h),
                child: Text(
                  "Feb 2, 2021",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 77.w, top: 4.h),
                child: Row(
                  children: [
                    Text(
                      "English and ",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Text(
                      "5 more",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xfff00A9B7)),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 33.h),
                height: 55.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: const Color(0xfffF4F4F4),
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                      color: const Color(0xfff00A9B7),
                      borderRadius: BorderRadius.circular(17.r),
                    ),
                    controller: tabController,
                    tabs: [
                      SizedBox(
                        width: 300.w,
                        child: const Tab(
                          text: 'Curriculum',
                        ),
                      ),
                      SizedBox(
                        width: 300.w,
                        child: const Tab(
                          text: 'Review',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [Curriculum(), ReviewTab()],
            ),
          ),
        ],
      ),
    );
  }
}
