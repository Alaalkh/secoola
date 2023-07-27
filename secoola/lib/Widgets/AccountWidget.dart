import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CourseWidget extends StatelessWidget {
  final Icon iconn;
  final Icon iconn2;
  final String title;
  final String title2;
  final String title3;
  final Icon iconn3;
  final Icon more;


  const CourseWidget(
      {super.key,
        required this.iconn,
        required this.title,
        required this.iconn2,
        required this.title2,
        required this.title3,
        required this.iconn3, required this.more,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22.h),
      width: 335.w,
      height: 152.h,
      decoration: BoxDecoration(
          color: Color(0xfffFFFFFF), borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h),
                child: iconn,
              ),
              Container(
                  margin: EdgeInsets.only(top: 22.h),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 14.sp),
                  )), Container(
                margin: EdgeInsets.only(top: 22.h, left: 160.w),
                child: more,
              )
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h,),
                child: iconn2,
              ),
              Container(
                  margin: EdgeInsets.only(top: 22.h),
                  child: Text(
                    title2,
                    style: TextStyle(fontSize: 14.sp),
                  )), Container(
                margin: EdgeInsets.only(top: 22.h, left: 170.w),
                child: more,
              )
            ],
          ),
          Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h),

                child: iconn3,
              ),
              Container(
                  margin: EdgeInsets.only(top: 22.h),
                  child: Text(
                    title3,
                    style: TextStyle(fontSize: 14.sp),
                  )),
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 177.w),
                child: more,
              )
            ],
          )
        ],
      ),
    );
  }
}
class SupportWid extends StatelessWidget {
  final Icon iconn;
  final Icon iconn2;
  final String title;
  final String title2;
  final Icon more;


  const SupportWid(
      {super.key,
        required this.iconn,
        required this.title,
        required this.iconn2,
        required this.title2,
       required this.more,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22.h),
      width: 335.w,
      height: 104.h,
      decoration: BoxDecoration(
          color: Color(0xfffFFFFFF), borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 11.w),
                child: iconn,
              ),
              Container(
                  margin: EdgeInsets.only(top: 22.h),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 14.sp),
                  )), Container(
                margin: EdgeInsets.only(top: 22.h, left: 188.w),
                child: more,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h, left: 11.w),
                child: iconn2,
              ),
              Container(
                  margin: EdgeInsets.only(top: 22.h,),
                  child: Text(
                    title2,
                    style: TextStyle(fontSize: 14.sp),
                  )), Container(
                margin: EdgeInsets.only(top: 22.h, left: 190.w),
                child: more,
              )
            ],
          ),

        ],
      ),
    );
  }
}
