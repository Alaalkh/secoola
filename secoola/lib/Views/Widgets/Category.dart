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
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.only(top: 22.h),
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

