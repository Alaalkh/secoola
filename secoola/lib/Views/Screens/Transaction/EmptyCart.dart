import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 77.h),
                width: 300.w,
                height: 199.h,
                decoration: BoxDecoration(
                    color: yellow, borderRadius: BorderRadius.circular(20.r)),
              ),
            ],
          ),
          SizedBox(
            height: 66.h,
          ),
          Text(
            "Nothing here yet    💁‍♀️",
            style: TextStyle(fontSize: 24.sp),
          ),    SizedBox(
            height: 11.h,
          ),
          Container(
              alignment: Alignment.center,
              width: 301.w,
              height: 22.h,
              child: const Text(
                "You haven't added anything to your cart yet, start ",
                style: TextStyle(color: Color(0xfff899197)),
              )),
          const Text(
            "exploring your favorite courses! ",
            style: TextStyle(color: Color(0xfff899197)),
          ),



          GestureDetector(
            onTap: () {
              // Get.toNamed(Routes.NavigationPage);
            },
            child: Container(margin: EdgeInsets.only(top: 100.h),
              alignment: Alignment.center,
              width: 335.w,
              height: 52.h,
              decoration: BoxDecoration(
                  color: const Color(0xfff00A9B7),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Text(
                "Explore course",
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
            ),
          )
        ],
      ),

    );
  }
}
