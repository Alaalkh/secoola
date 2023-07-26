import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Searchresult extends StatelessWidget {
  const Searchresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: Column(
        children: [searchbar(), Buttons()],
      ),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 88.h),
              height: 48.h,
              width: 335.w,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(15.r)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "UX Design",
                  suffixIcon: const Icon(
                    Icons.close,
                    size: 18,
                  ),
                  hintStyle: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffD9DBDE)),
                  prefixIcon: Image.asset(
                    "assets/img_4.png",
                    scale: 5,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: Text(
                  "Showing search result for “UX Design”",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xfffA9AEB2)),
                )),
          ],
        ),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 158.w,
          margin: EdgeInsets.only(top: 22.h, left: 15.w),
          height: 48.h,
          decoration: BoxDecoration(
              color: Color(0xfffFFFFFF),
              border: Border.all(
                color: Color(0xfff00A9B7),
              ),
              borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            children: [Container(
              margin: EdgeInsets.only(left: 45.w),
              child: Image.asset(
                "assets/filter.png",
                scale: 3,
                color: Color(0xfff00A9B7),
              ),
            ),SizedBox(width: 11.w,),
              Text(
                "Filter",
                style: TextStyle(fontSize: 16.sp, color: Color(0xfff00A9B7)),
              )],
          ),
        ),
        Container(
          width: 158.w,
          margin: EdgeInsets.only(top: 22.h, left: 15.w),
          height: 48.h,
          decoration: BoxDecoration(
              color: Color(0xfffFFFFFF),
              border: Border.all(
                color: Color(0xfff00A9B7),
              ),
              borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            children: [
              Container(margin: EdgeInsets.only(left: 45.w),
                child: Image.asset(
                  "assets/sorting.png",
                  scale: 3,
                  color: Color(0xfff00A9B7),
                ),
              ),SizedBox(width: 11.w,),
              Text(
                "Sort",
                style: TextStyle(fontSize: 16.sp, color: Color(0xfff00A9B7)),
              )
            ],
          ),
        )
      ],
    );
  }
}
