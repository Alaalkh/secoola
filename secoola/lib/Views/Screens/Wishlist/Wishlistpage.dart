import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/WishlistContent.dart';
import 'package:secoola/theme/Color.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(primary: false,
          toolbarHeight: 186,
          automaticallyImplyLeading: false,
          backgroundColor: teal,
          title: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 28.h,right: 250.w),
                  child: Text(
                    "Wishlist",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),
              const SizedBox(
                height: 44,
              ),
              Container(
                height: 48.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: white2,
                    borderRadius: BorderRadius.circular(15.r)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle: TextStyle(fontSize: 14.sp, color: grey),
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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(28.r),
            bottomRight: Radius.circular(28.r),
          )),
        ),
        const Elements()
      ],
    );
  }
}

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = [
      Ligthorange,
      purple,
      yellow,
      green,
      Ligthblue,
      pink,
    ];
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          mainAxisExtent: 190,
        ),
        itemCount: WishlistContents.length,
        itemBuilder: (_, i) {
          Color color = colorsList[i];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: white2,
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
                          color: white2,
                          borderRadius: BorderRadius.circular(9.r)),
                      height: 28.h,
                      width: 28.w,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 17,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.w),
                child: Text(WishlistContents[i].title),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: const Icon(
                        Icons.person,
                        color: grey,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      WishlistContents[i].tutorname,
                      style: TextStyle(color: grey, fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 22.w),
                    child: Text(
                      "\$ 24",
                      style: TextStyle(color: teal, fontSize: 16.sp),
                    ),
                  ),
                  Container(
                    height: 15.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Ligthblue,
                        borderRadius: BorderRadius.circular(22.r)),
                    margin: EdgeInsets.only(left: 11.w, top: 6.h),padding: EdgeInsets.only(left: 11.w,right: 11.w),
                    child: Text(
                      "Label",
                      style: TextStyle(color: teal, fontSize: 12.sp),
                    ),
                  )
                ],
              )
            ],
          );
        });
  }
}
