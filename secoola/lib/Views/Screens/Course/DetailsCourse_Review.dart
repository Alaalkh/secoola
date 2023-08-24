import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/Course/Curriculum.dart';
import 'package:secoola/Views/Screens/Course/Price_Details.dart';
import 'package:secoola/Views/Screens/Course/ReviewTab.dart';
import 'package:secoola/theme/Color.dart';

class DetailsReview extends StatefulWidget {
  const DetailsReview({super.key});

  @override
  State<DetailsReview> createState() => _DetailsReviewState();
}

class _DetailsReviewState extends State<DetailsReview>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
      .of(context)
      .size
      .width/2;
  return Container(
    margin: EdgeInsets.only(bottom: 11.h),
    width: 375.w,
    height: 956.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28.r),
      color: white2,
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right:50.w, top: 11.h),
          child: Text(
            "Design Thingking Fundamental",
            style: TextStyle(fontSize: 20.sp, color: Colors.black),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 11.h),
              child: const Icon(
                Icons.person,
                color: Color(0xff00A9B7),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 7.w, top: 11.h),
                child: Text(
                  "Halo Academy",
                  style: TextStyle(color: teal, fontSize: 16.sp),
                )),SizedBox(width:66.w,),
            Image.asset(
              "assets/star.png",
              scale: 33,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "4.8",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 335.w,
          height: 63.h,
          child: Text(
            "Description this is a simple description that explain the description about the class or blabla bla and then blablabla of course.",
            style: TextStyle(color: grey, fontSize: 16.sp),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w, top: 22.h),
              child: Text(
                "Students",
                style: TextStyle(fontSize: 14.sp, color: grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 105.w, top: 22.h),
              child: Text(
                "Language",
                style: TextStyle(fontSize: 14.sp, color: grey),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w, top: 4.h),
              child: Text(
                "143.247",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 104.w, top: 4.h),
              child: Text(
                "English",
                style: TextStyle(fontSize: 16.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w, top: 22.h),
              child: Text(
                "Last update",
                style: TextStyle(fontSize: 14.sp, color: grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 88.w, top: 22.h),
              child: Text(
                "Subtitle",
                style: TextStyle(fontSize: 14.sp, color: grey),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w, top: 4.h),
              child: Text(
                "Feb 2, 2021",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 77.w, top: 4.h),
              child: Row(
                children: [
                  Text(
                    "English and ",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    "5 more",
                    style: TextStyle(fontSize: 16.sp, color: teal),
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 33.h,left: 22.w,right: 22.w),

          decoration: BoxDecoration(
              color: Ligthgrey2, borderRadius: BorderRadius.circular(17.r)),
          child: Padding(
            padding:
            EdgeInsets.only(top: 5.h,  bottom: 5.h),
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              indicatorWeight: 2,
              indicator: BoxDecoration(
                color: teal,
                borderRadius: BorderRadius.circular(17.r),
              ),
              controller: tabController,
              tabs: [
                SizedBox(
                  width: width,
                  child: const Tab(
                    text: 'Curriculum',
                  ),
                ),
                SizedBox(
                  width: width,
                  child: const Tab(
                    text: 'Review',
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [Curriculumtab(), ReviewTab()],
          ),
        ),
        const PriceDetails()
      ],
    ),
  );
  }
}


