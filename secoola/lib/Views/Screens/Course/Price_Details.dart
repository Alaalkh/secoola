import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/Color.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 33.h,
      ),
      width: 375.w,
      height: 222.h,
      decoration: BoxDecoration(
        color: white2,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Price",
                style: TextStyle(color: grey, fontSize: 16.sp),
              ),
              Text(
                "\$150",
                style: TextStyle(color: teal, fontSize: 24.sp),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22.h),
                alignment: Alignment.center,
                height: 52.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: teal, borderRadius: BorderRadius.circular(20.r)),
                child: const Text(
                  "Enroll course now",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 22.h, left: 22.w),
                height: 52.h,
                width: 158.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: teal),
                ),
                child: const Text(
                  "ADD TO CART",
                  style: TextStyle(color: teal),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 22.h,left: 13.w),
                height: 52.h,
                width: 158.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: teal),
                ),
                child: const Text(
                  "ADD TO WISHLIST",
                  style: TextStyle(color: teal),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
