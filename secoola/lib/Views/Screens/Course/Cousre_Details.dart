import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Screens/Course/Continuecourse.dart';
import 'package:secoola/Views/Screens/Course/Price_Details.dart';
import 'package:secoola/Views/Widgets/CurriculumWidget.dart';
import 'package:secoola/theme/Color.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [AppbarWidget(), CourseReview()],
        ),
      ),
    );
  }
}

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 360.h,
              width: 375.w,
              decoration: const BoxDecoration(color: Color(0xfffffea7d)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          margin: EdgeInsets.only(left: 33.w, top: 55.h),
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
                      Container(
                        height: 40.h,
                        width: 40.w,
                        margin: EdgeInsets.only(left: 222.w, top: 55.h),
                        decoration: BoxDecoration(
                            color: const Color(0xfffccbb64),
                            borderRadius: BorderRadius.circular(12.r)),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: white2,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
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
        color: white2,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w, top: 11.h),
                child: Text(
                  "Design Thingking Fundamental",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
              )
            ],
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
                    style: TextStyle(color: teal, fontSize: 16.sp),
                  )),
              SizedBox(
                width: 49.w,
                height: 21.h,
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
          SizedBox(
            width: 335.w,
            height: 63.h,
            child: Text(
              "Description this is a simple description that explain the description about the class or blabla bla and then blablabla of course.",
              style: TextStyle(color: grey, fontSize: 16.sp),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 22.h),
                child: Text(
                  "Students",
                  style: TextStyle(fontSize: 14.sp, color: grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 105.w, top: 22.h),
                child: Text(
                  "Language",
                  style: TextStyle(fontSize: 14.sp, color: grey),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 4.h),
                child: Text(
                  "143.247",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 104.w, top: 4.h),
                child: Text(
                  "English",
                  style: TextStyle(fontSize: 16.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 22.h),
                child: Text(
                  "Last update",
                  style: TextStyle(fontSize: 14.sp, color: grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 88.w, top: 22.h),
                child: Text(
                  "Subtitle",
                  style: TextStyle(fontSize: 14.sp, color: grey),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 4.h),
                child: Text(
                  "Feb 2, 2021",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 77.w, top: 4.h),
                child: Row(
                  children: [
                    Text(
                      "English and ",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Text(
                      "5 more",
                      style: TextStyle(fontSize: 16.sp, color: teal),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 33.h),
            height: 46.h,
            width: 335.w,
            decoration: BoxDecoration(
                color: Ligthgrey2, borderRadius: BorderRadius.circular(17.r)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                indicatorWeight: 2,
                indicator: BoxDecoration(
                  color: teal,
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
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [Curriculum(), ReviewTab()],
            ),
          ),
          const PriceDetails()
        ],
      ),
    );
  }
}



