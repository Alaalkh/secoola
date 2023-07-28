import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Widgets/CurriculumWidget.dart';

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
              decoration:  const BoxDecoration(color: Color(0xfffffea7d)),
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
                        ),onTap: (){
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
                          color: Color(0xfffffffff),
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
        color: const Color(0xfffffffff),
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
                              0xfff00a9b7,
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
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 13.h),
                width: 335.w,
                height: 63.h,
                child: Text(
                  "Description this is a simple description that explain the description about the class or blabla bla and then blablabla of course.",
                  style: TextStyle(
                      color: const Color(0xfffa9aeb2), fontSize: 16.sp),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, top: 22.h),
                child: Text(
                  "Students",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffa9aeb2)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 105.w, top: 22.h),
                child: Text(
                  "Language",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffa9aeb2)),
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
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffa9aeb2)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 88.w, top: 22.h),
                child: Text(
                  "Subtitle",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffa9aeb2)),
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
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xfff00a9b7)),
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
                height: 46.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: const Color(0xffff4f4f4),
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.transparent,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                      color: const Color(0xfff00a9b7),
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
              children: [const Curriculum(), const ReviewTab()],
            ),
          ),
          const Row(
            children: [PriceDetails()],
          )
        ],
      ),
    );
  }
}

class Curriculum extends StatelessWidget {
  const Curriculum({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CurriculumWidgets(
          Name: "Introduction         ",
          duraion: "00.53 mins",
          iconn: Icon(Icons.slow_motion_video_outlined,
              size: 33, color: Color(0xfff00a9b7)),
        ),
        CurriculumWidgets(
            Name: "Design Thingking",
            duraion: "05.25 mins",
            iconn: Icon(Icons.slow_motion_video_outlined,
                size: 33, color: Color(0xfff00a9b7))),
        CurriculumWidgets(
            Name: "Improving Design",
            duraion: "05.36 mins",
            iconn: Icon(Icons.slow_motion_video_outlined,
                size: 33, color: Color(0xfff00a9b7)))
      ],
    );
  }
}

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h),
              child: Text(
                "Student reviews",
                style: TextStyle(fontSize: 16.sp),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset(
                  "assets/star.png",
                  scale: 33,
                )),
            SizedBox(width: 6.w),
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset(
                  "assets/star.png",
                  scale: 33,
                )),
            SizedBox(width: 6.w),
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset(
                  "assets/star.png",
                  scale: 33,
                )),
            SizedBox(width: 6.w),
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset(
                  "assets/star.png",
                  scale: 33,
                )),
            SizedBox(width: 6.w),
            Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset(
                  "assets/star.png",
                  scale: 33,
                )),
            SizedBox(width: 20.w),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Text(
                "4.8 out of 5",
                style: TextStyle(fontSize: 12.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 33.h, left: 28.w),
              child: Text(
                "Sort By",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 33.h, left: 28.w),
          child:    Image.asset("assets/arrow.png",scale: 3,))
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.h, left: 20.w),
              height: 36.h,
              width: 36.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffffea7d),
                  borderRadius: BorderRadius.circular(12)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22.w, top: 12.h),
                  child: const Text(
                    "Reviewer Username",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                    margin: EdgeInsets.only(left: 22.w, top: 3.h),
                    child:  Text(
                      "1 day ago",
                      style: TextStyle(fontSize: 12.sp),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h, left: 66.w),
              height: 32.h,
              width: 67.w,
              decoration: BoxDecoration(
                  color: const Color(0xffffafafa),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/star.png",
                    scale: 33,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                   Text(
                    "4.8",
                    style: TextStyle(fontSize: 16.sp),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.h, left: 20.w),
              width: 335.w,
              height: 41.h,
              child: const Text(
                "Description this is a simple description that explain the description about the class ",
                style: TextStyle(color: Color(0xfffa9aeb2)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 33.h,
      ),
      width: 375.w,
      height: 222.h,
      decoration: BoxDecoration(
        color: const Color(0xfffffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 22.w),
                child: Text(
                  "Price",
                  style: TextStyle(
                      color: const Color(0xfffa9aeb2), fontSize: 16.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 244.w),
                child: Text(
                  "\$150",
                  style: TextStyle(
                      color: const Color(0xfff00a9b7), fontSize: 24.sp),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h),
                alignment: Alignment.center,
                height: 52.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: const Color(0xfff00a9b7),
                    borderRadius: BorderRadius.circular(20.r)),
                child: const Text(
                  "Enroll course now",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 22.h, left: 22.w),
                height: 52.h,
                width: 158.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: const Color(0xfff00a9b7)),
                ),
                child: const Text(
                  "ADD TO CART",
                  style: TextStyle(color: Color(0xfff00a9b7)),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 22.h),
                height: 52.h,
                width: 158.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: const Color(0xfff00a9b7)),
                ),
                child: const Text(
                  "ADD TO WISHLIST",
                  style: TextStyle(color: Color(0xfff00a9b7)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
