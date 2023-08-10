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
        Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: icon,
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: Text(title),
        ),SizedBox(width: 178.w,),
        Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: arrow,
        )
      ],
    );
  }
}

