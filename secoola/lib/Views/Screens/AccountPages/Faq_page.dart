import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/fquestion.dart';
import 'package:secoola/theme/Color.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 11),
                height: 52,
                width: 52,
                margin: const EdgeInsets.only(top: 66, left: 22),
                decoration: BoxDecoration(
                    color: const Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(17)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Container(
                margin: const EdgeInsets.only(top: 66, left: 44),
                child: const Text(
                  "FAQ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Theme(
            data: ThemeData(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.yellow,
                cardColor: grey),
            child: Expanded(
              child: ListView.builder(
                  itemCount: fqcontents.length,
                  itemBuilder: (_, i) {
                    return ExpansionTile(
                      title: Text(fqcontents[i].title),
                      controlAffinity: ListTileControlAffinity.trailing,
                      initiallyExpanded: true,
                      collapsedBackgroundColor: white,
                      expandedAlignment: Alignment.topLeft,
                      iconColor: teal,
                      childrenPadding: EdgeInsets.all(11),
                      children: [
                        Text(
                          fqcontents[i].discription,
                          style: TextStyle(
                              color: grey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
