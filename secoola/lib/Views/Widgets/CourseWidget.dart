import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class CourseWidget extends StatelessWidget {
  final Color boxcolor;
  final String titletext;
  final String coursetutor;
  final String price;
  final String recommend;
  final Color colorText;
  final Color background;
  final String backimage
;
  const CourseWidget(
      {super.key,
      required this.boxcolor,
      required this.titletext,
      required this.coursetutor,
      required this.price,
      required this.recommend,
      required this.colorText,
      required this.background, required this.backimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                       backimage,
                        width: 220.w,
                        height: 140.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only( top: 22.h),
                            decoration: BoxDecoration(
                              color: white2,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            height: 28.h,
                            width: 49.w,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/star.png",
                                  height: 11.h,
                                  width: 22.w,
                                ),
                                const Text("4.8")
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 77.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22.w, top: 22.h),
                            decoration: BoxDecoration(
                              color: white2,
                              borderRadius: BorderRadius.circular(9.r),
                            ),
                            height: 28.h,
                            width: 28.w,
                            child: const Icon(
                              Icons.favorite,
                              color: grey,
                              size: 17,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // Add other widgets to the Column if needed
                ],
              ),

            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Text(
            titletext,
            style: TextStyle(color: Colors.black, fontSize: 14.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Row(
            children: [
              const Icon(
                Icons.person,
                color: grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 6.h),
                child: Text(
                  coursetutor,
                  style: TextStyle(color: grey, fontSize: 12.sp),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 6.h),
              child: Text(
                price,
                style: TextStyle(color: teal, fontSize: 16.sp),
              ),
            ),
            Container(
              height: 20.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: background, borderRadius: BorderRadius.circular(22.r)),
              margin: EdgeInsets.only(left: 11.w, top: 6.h),
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Text(
                recommend,
                style: TextStyle(color: colorText, fontSize: 12.sp),
              ),
            )
          ],
        )
      ],
    );
  }
}
