import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme/Color.dart';

class Iconwidget extends StatelessWidget {
  final Image image;
  final EdgeInsets edgeInsets;
  const Iconwidget({super.key, required this.image, required this.edgeInsets});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets,
      height: 52.h,
      width: 98.w,
      decoration: BoxDecoration(
          color: white2,
          borderRadius: BorderRadius.circular(15.r)),
      child: image,
    );
  }
}
