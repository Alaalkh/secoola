import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class CategoriesWidget extends StatelessWidget {
  final String image;
  final String Category;
  const CategoriesWidget({super.key, required this.image, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: 18.w, top: 11.h),
      height: 40.h,
      width: 96.w,
      decoration: BoxDecoration(
          color: white2,
          borderRadius: BorderRadius.circular(22.r)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image ,
            width: 22.w,
          ), SizedBox(width: 7.w,),
          Text(Category,style:  TextStyle(fontSize: 14.sp),)
        ],
      ),
    );
  }
}
