import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/SearchBar.dart';

import '../../../Models/WishlistContent.dart';


class Searchresult extends StatelessWidget {
  const Searchresult({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchbar(title: 'UxDesing', trailingicon: Icon(Icons.close),), Buttons(), Elements()],
        ),
      ),
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
              color: const Color(0xfffFFFFFF),
              border: Border.all(
                color: const Color(0xfff00A9B7),
              ),
              borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 45.w),
                child: Image.asset(
                  "assets/filter.png",
                  scale: 3,
                  color: const Color(0xfff00A9B7),
                ),
              ),
              SizedBox(
                width: 11.w,
              ),
              Text(
                "Filter",
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xfff00A9B7)),
              )
            ],
          ),
        ),
        Container(
          width: 158.w,
          margin: EdgeInsets.only(top: 22.h, left: 15.w),
          height: 48.h,
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              border: Border.all(
                color: const Color(0xfff00A9B7),
              ),
              borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 45.w),
                child: Image.asset(
                  "assets/sorting.png",
                  scale: 3,
                  color: const Color(0xfff00A9B7),
                ),
              ),
              SizedBox(
                width: 11.w,
              ),
              Text(
                "Sort",
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xfff00A9B7)),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = [
      Color(0xfffFFB099),
      Color(0xfffD0B2FF),
      Color(0xfffFFEA7D),
      Color(0xfff86F2CB),
      Color(0xfffA3CCDE),
      Color(0xfffFCE2EA),
    ];
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 44.0,
          mainAxisExtent: 190,
        ),
        itemCount: WishlistContents.length,
        itemBuilder: (_, i) {
          Color color = colorsList[i];
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w, right: 16.w),
                height: 100.h,
                width: 158.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22.r,
                  ),
                  color: color,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 11.w, top: 11.h),
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
                      width: 19.w,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 22.w, top: 11.h),
                      decoration: BoxDecoration(
                          color: const Color(0xfffFFFFFF),
                          borderRadius: BorderRadius.circular(9.r)),
                      height: 28.h,
                      width: 28.w,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 6.w),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 17,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.w),
                child: Text(WishlistContents[i].title),
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xfffA9AEB2),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      WishlistContents[i].tutorname,
                      style:
                          TextStyle(color: Color(0xfffA9AEB2), fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22.w),
                    child: Text(
                      "\$ 24",
                      style: TextStyle(
                          color: Color(0xfff00A9B7), fontSize: 16.sp),
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: 77.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xfffDCF3F5),
                        borderRadius: BorderRadius.circular(22.r)),
                    margin: EdgeInsets.only(left: 11.w, top: 6.h),
                    child: Text(
                      "Label",
                      style: TextStyle(
                          color: Color(0xfff00A9B7), fontSize: 12.sp),
                    ),
                  )
                ],
              )
            ],
          );
        });
  }
}
