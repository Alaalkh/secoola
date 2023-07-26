import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurriculumWidgets extends StatelessWidget {
  final String Name;
  final String duraion;
  final Icon iconn;
  const CurriculumWidgets({super.key, required this.Name, required this.duraion, required this.iconn});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 22.h),
      width: 335.w,
      height: 86.h,
      decoration: BoxDecoration(
        color: const Color(0xfffFFFFFF),
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.h, left: 10.w),
                child: Text(
                  Name,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Text(
                  duraion,
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xfff707070)),
                ),
              )
            ],
          ),
          SizedBox(
            width: 150.w,
          ),
          Container(
            margin: EdgeInsets.only(top: 30.h),
            child:  iconn,
            ),

        ],
      ),
    );
  }
}
