import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class DesignTopics extends StatelessWidget {
  final Color boxcolor;
  final String titletext;
  final String coursetutor;
  final String price;
  final String recommend;
  final Color colorText;
  final Color background;
  const DesignTopics({super.key, required this.boxcolor, required this.titletext, required this.coursetutor, required this.price, required this.recommend, required this.colorText, required this.background});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start ,
      children: [ Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:  EdgeInsets.only(left: 22.w, top: 22.h),
            height: 100.h,
            width: 142.w,
            decoration: BoxDecoration(
                color:boxcolor,
                borderRadius: BorderRadius.circular(17.r)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:  EdgeInsets.only(top: 11.h, left: 6.h),
                  decoration: BoxDecoration(
                      color: const Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(9.r)),
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
                  width: 50.w,
                ),
                Container(
                  margin:  EdgeInsets.only(top: 11.h),
                  decoration: BoxDecoration(
                      color: white2,
                      borderRadius: BorderRadius.circular(9.r)),
                  height: 28.h,
                  width: 28.w,
                  child: Row(
                    children: [
                      Container(
                        padding:  EdgeInsets.only(left: 6.w),
                        child: const Icon(
                          Icons.favorite,
                          color:grey,
                          size: 17,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
        Row(
          children: [
            Container(
              margin:  EdgeInsets.only(left: 22.w, top: 11.h),
              child:  Text(
                titletext,
                style:  TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
                margin:  EdgeInsets.only(left: 20.w, top: 6.h),
                child: const Icon(
                  Icons.person,
                  color: grey,
                )),
            Container(
              margin:  EdgeInsets.only(top: 6.h),
              child:  Text(
                coursetutor,
                style:  TextStyle(color:grey, fontSize: 12.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin:  EdgeInsets.only(left: 22.w, top: 6.h),
              child:  Text(
                price,
                style: TextStyle(color: teal, fontSize: 16.sp),
              ),
            ),
            Container(
              height: 20.h,
              width: 77.w,
              alignment: Alignment.center,
              decoration:  BoxDecoration(color: background,borderRadius: BorderRadius.circular(22)),
              margin:  EdgeInsets.only(left: 11.w, top: 6.h),
              child:  Text(
                recommend,
                style: TextStyle(color: colorText, fontSize: 12.sp),
              ),
            )
          ],
        )
      ],);
  }
}
