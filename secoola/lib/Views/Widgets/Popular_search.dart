import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class Popularsearch extends StatelessWidget {
  final String search;

  const Popularsearch({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 22.h,left: 10.w ),
      width: 85.w,
      height: 38.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: white2),
      child: Text(
        search,
      ),
    );
  }
}
