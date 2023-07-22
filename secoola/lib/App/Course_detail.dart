import 'package:flutter/material.dart';
import 'package:secoola/App/HomePage.dart';
import 'package:secoola/Widgets/Completecourse.dart';
import 'package:secoola/Widgets/Ongoingtasks.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
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
    return const SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Appbar(),
        Togglebar(),
      ],
    ));
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfff00A9B7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
      ),
      height: 222,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 33, top: 66),
                  child: const Text(
                    "My Course",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
              const SizedBox(
                width: 22,
              ),
              const SizedBox(
                width: 77,
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 335,
                decoration: BoxDecoration(
                    color: const Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color(0xfffD9DBDE)),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 22),
              Container(
                // height: 50,

                decoration: BoxDecoration(
                    color: const Color(0xfffF4F4F4),
                    borderRadius: BorderRadius.circular(17)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        indicatorColor: Colors.transparent,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: const Color(0xfff00A9B7),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        controller: tabController,
                        tabs: [
                          const SizedBox(
                            child: Tab(
                              text: 'Ongoing',
                            ),
                            width: 300,
                          ),
                          SizedBox(
                            child: const Tab(
                              text: 'Complete',
                            ),
                            width: yourWidth,
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
      ),
    );
  }
}
