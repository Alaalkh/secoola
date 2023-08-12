import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/AccountPages/Account_Widget.dart';
import 'package:secoola/Views/Screens/AccountPages/Course_Widget.dart';
import 'package:secoola/Views/Screens/AccountPages/Signout.dart';
import 'package:secoola/Views/Screens/AccountPages/Support_Widget.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/theme/Color.dart';

class AccontPage extends StatelessWidget {
  const AccontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBody: true,
        appBar: CustomAppBar(
          backcolor: Colors.transparent,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only( left: 10.w),
                child: Row(
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 24.sp, color: Colors.black),
                    ),
                    SizedBox(
                      width: 77.w,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [  Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),

              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 22.w),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 22.w, ),
                        child: Text(
                          "Raymond Skyberg",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.w, ),
                        child: Text(
                          "raymond@mail.com",
                          style: TextStyle(fontSize: 12.sp, color: grey),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 77.w,),
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: white2,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Image.asset(
                      "assets/editbutton.png",
                      scale: 2,
                    ),
                  )
                ],
              )
            ),

              Accountwidget(),
              Coursewidget(),
              SupportWidget(),
              Signout(),
            ],
          ),
        ));
  }
}
