import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/Home/HomePage.dart';
import 'package:secoola/Views/Screens/Mycourse/Completecourse.dart';
import 'package:secoola/Views/Screens/Mycourse/Ongoingtasks.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
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
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          backcolor: teal,
          title: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 11.0.w),
                child: Text(
                  "My Course",
                  style: TextStyle(fontSize: 24.sp, color: white2),
                ),
              ),

            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: teal,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),

                child: Padding(
                  padding: EdgeInsets.only( top: 125.h,bottom: 16.h,left: 22.w,right: 22.w),
                  child: Container(
                    height: 48.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                        color: white2,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search for anything",
                        hintStyle: TextStyle(fontSize: 14.sp, color: grey),
                        prefixIcon: Image.asset(
                          "assets/img_4.png",
                          scale: 5,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Togglebar(),
            ],
          ),
        ));
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
    double width = MediaQuery.of(context).size.width / 2;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h),
              decoration: BoxDecoration(
                  color: Ligthgrey2, borderRadius: BorderRadius.circular(17.r)),
              child: Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  indicatorWeight: 2,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: teal,
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  controller: tabController,
                  tabs: [
                    SizedBox(
                      width: width,
                      child: const Tab(
                        text: 'Ongoing',
                      ),
                    ),
                    SizedBox(
                      width: width,
                      child: const Tab(
                        text: 'Complete',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [Ondoingtask(), Completecourse()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
