import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class searchbar extends StatelessWidget {
  final String title;
  final Icon trailingicon;
  const searchbar({super.key, required this.title,  required this.trailingicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 88.h),
      height: 48.h,
      width: 335.w,
      decoration: BoxDecoration(
          color: const Color(0xfffFFFFFF),
          borderRadius: BorderRadius.circular(15.r)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title,
          suffixIcon: trailingicon,
          hintStyle: TextStyle(
              fontSize: 14.sp, color: const Color(0xfffD9DBDE)),
          prefixIcon: Image.asset(
            "assets/img_4.png",
            scale: 5,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
