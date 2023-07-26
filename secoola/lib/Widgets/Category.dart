import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  final Image icon;
  final String title;
  final Icon arrow;

  const Category(
      {super.key,
      required this.icon,
      required this.title,
      required this.arrow});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 22.h, left: 22.w),
          child: icon,
        ),
        Container(
          margin: EdgeInsets.only(top: 22.h, left: 6.w),
          child: Text(title),
        ),SizedBox(width: 178.w,),
        Container(
          margin: EdgeInsets.only(top: 22.h),
          child: arrow,
        )
      ],
    );
  }
}

class Category2 extends StatelessWidget {
  final Image icon;
  final String title;
  final Icon arrow;

  const Category2(
      {super.key,
        required this.icon,
        required this.title,
        required this.arrow});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 22.h, left: 22.w),
          child: icon,
        ),
        Container(
          margin: EdgeInsets.only(top: 22.h, left: 6.w),
          child: Text(title),
        ),SizedBox(width: 166.w,),
        Container(
          margin: EdgeInsets.only(top: 22.h),
          child: arrow,
        )
      ],
    );
  }
}
