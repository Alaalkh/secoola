import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class CategoriesWidget extends StatelessWidget {
  final String image;
  final String Category;
  const CategoriesWidget({super.key, required this.image, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(left: 7.w,right: 7.w),
      margin:  EdgeInsets.only(left: 18.w, top: 11.h),
      height: 40.h,
      decoration: BoxDecoration(
          color: white2,
          borderRadius: BorderRadius.circular(22.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(
              imageUrl: image ,
            ),
          ),
          Text(Category,style:  TextStyle(fontSize: 14.sp),)
        ],
      ),
    );
  }
}
