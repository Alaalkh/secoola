import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/appRoutes.dart';

import '../../theme/Color.dart';

class VerfiyButton extends StatelessWidget {
  final String ButtonString;
  const VerfiyButton({super.key, required this.ButtonString});

  @override
  Widget build(BuildContext context) {
    return     Container(margin: EdgeInsets.only(bottom: 11.h,right: 22.w),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(11)),
      width: 355.w,
      height: 56.h,
      child: Padding(
        padding: EdgeInsets.only(left: 25.w),
        child: ElevatedButton(
          onPressed: () {
          } ,
          style: ElevatedButton.styleFrom(
            backgroundColor: teal,
          ),
          child:  Text(
            ButtonString,
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
