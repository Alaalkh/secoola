import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/BottomNavigation/HomePage.dart';
import 'package:secoola/Views/Widgets/Completecourse.dart';
import 'package:secoola/Views/Widgets/Ongoingtasks.dart';
import 'package:secoola/theme/Color.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<MyCourse>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);
  List<String> labels = ["Ongoing", "Complete"];
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Appbar(),
        Togglebar(),
      ],
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color:teal,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28.r),
          bottomRight: Radius.circular(28.r),
        ),
      ),
      height: 222,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin:  EdgeInsets.only(left: 33.w, top: 66.h),
                  child:  Text(
                    "My Course",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),


            ],
          ),
          const SizedBox(
            height: 44,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: white2,
                    borderRadius: BorderRadius.circular(15.r)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle:  TextStyle(
                        fontSize: 14.sp, color: grey),
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

class Togglebar extends StatefulWidget {
  const Togglebar({super.key});

  @override
  State<Togglebar> createState() => _TogglebarState();
}

class _TogglebarState extends State<Togglebar>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double yourWidth = width;
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
               SizedBox(height: 22.h),
              Container(
                // height: 50,

                decoration: BoxDecoration(
                    color: Ligthgrey2,
                    borderRadius: BorderRadius.circular(17.r)),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 5.w,top: 5.h,right: 5.w,bottom: 5.h),
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        indicatorColor: Colors.transparent,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: teal,
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                        controller: tabController,
                        tabs: [
                           SizedBox(
                            width: 300.w,
                            child: const Tab(
                              text: 'Ongoing',
                            ),
                          ),
                          SizedBox(
                            width: yourWidth,
                            child: const Tab(
                              text: 'Complete',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [const Ondoingtask(), const Completecourse()],
                ),
              )
            ],
          ),
        ),

    );
  }
}
