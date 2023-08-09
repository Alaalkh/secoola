import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CourseWidget extends StatelessWidget {
  final Icon iconn;
  final String title;

  final Icon more;


  const CourseWidget(
      {super.key,
        required this.iconn,
        required this.title,
        required this.more,
      });

  @override
  Widget build(BuildContext context) {

       return   Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                margin: EdgeInsets.only(top: 22.h, left: 165.w),
                child: more,
              )
            ],
          );


  }
}
class SupportWid extends StatelessWidget {
  final Icon iconn;
  final String title;
  final Icon more;


  const SupportWid(
      {super.key,
        required this.iconn,
        required this.title,

       required this.more,
      });

  @override
  Widget build(BuildContext context) {
    return
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

    );
  }
}
