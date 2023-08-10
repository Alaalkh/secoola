import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

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
                child: Image.asset(
                  "assets/arrow.png",
                  scale: 3,
                ))
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
                  borderRadius: BorderRadius.circular(12.r)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22.w, top: 12.h),
                  child: Text(
                    "Reviewer Username",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                    margin: EdgeInsets.only(left: 22.w, top: 3.h),
                    child: Text(
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
                  color: white, borderRadius: BorderRadius.circular(12.r)),
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
        Container(
          margin: EdgeInsets.only(top: 16.h, left: 20.w),
          width: 335.w,
          height: 41.h,
          child: const Text(
            "Description this is a simple description that explain the description about the class ",
            style: TextStyle(color: grey),
          ),
        )
      ],
    );
  }
}
