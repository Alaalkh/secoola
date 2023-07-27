import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/WishlistContent.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Appbar(), Elements()],
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff00A9B7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28.r),
          bottomRight: Radius.circular(28.r),
        ),
      ),
      height: 222.h,
      width: double.infinity.w,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 33.w, top: 66.h),
                  child: Text(
                    "Wishlist",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),
              SizedBox(
                width: 77.w,
              ),
            ],
          ),
          SizedBox(
            height: 44.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: const Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(15.r)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, color: Color(0xfffD9DBDE)),
                    prefixIcon: Image.asset(
                      "assets/img_4.png",
                      scale: 5,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {List<Color> colorsList = [
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
          crossAxisSpacing: 33.0,
          mainAxisSpacing: 44.0,
          mainAxisExtent: 190,
        ),
        itemCount: WishlistContents.length,
        itemBuilder: (_, i) {            Color color = colorsList[i];

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
              Container(
                margin: EdgeInsets.only(left: 11.w),
                child: Text(WishlistContents[i].title),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xfffA9AEB2),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 6.h),
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
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w),
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
              )
            ],
          );
        });
  }
}
