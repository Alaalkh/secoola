import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class TopicWidgdet extends StatelessWidget {
  final String Topictitle;

  const TopicWidgdet({super.key, required this.Topictitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25.w,top: 35.h),
          child: Text(
            "Your topic",
            style: TextStyle(color: Colors.black, fontSize: 18.sp),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 20.h,
          margin: EdgeInsets.only(left: 11.w,top: 35.h),
          padding: EdgeInsets.only(left: 5.w,right: 5.w),
          decoration: BoxDecoration(
            color: const Color(0xfffDCF3F5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            Topictitle,
            style:  TextStyle(color: Color(0xfff00A9B7), fontSize: 12.sp),
          ),
        ),
         SizedBox(
          width: 122.w,
        ),
        Padding(padding: EdgeInsets.only(left: 16.w,top: 35.h),
          child: Text(
            "See All",
            style: TextStyle(color: teal, fontSize: 14.sp),
          ),
        )
      ],
    );
  }
}
