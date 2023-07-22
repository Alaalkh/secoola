import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secoola/Models/WishlistContent.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [const Appbar(),
        Elements()
      ],
    );
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
                    "Wishlist",
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
class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 33.0,
          mainAxisSpacing: 44.0,
          mainAxisExtent: 179,
        ),
        itemCount: WishlistContents.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22, right: 16),
                height: 100,
                width: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                  color: const Color(0xfffA3CCDE),
                ),child:  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 11, top: 11),
                    decoration: BoxDecoration(
                        color: const Color(0xfffFFFFFF),
                        borderRadius: BorderRadius.circular(9)),
                    height: 28,
                    width: 49,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/star.png",
                          height: 11,
                          width: 22,
                        ),
                        const Text("4.8")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 22, top: 11),
                    decoration: BoxDecoration(
                        color: const Color(0xfffFFFFFF),
                        borderRadius: BorderRadius.circular(9)),
                    height: 28,
                    width: 28,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 6),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 17,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 11),
                child: Text(WishlistContents[i].title),
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20, top: 6),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xfffA9AEB2),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    child:  Text(
                      WishlistContents[i].tutorname,
                      style: const TextStyle(color: Color(0xfffA9AEB2), fontSize: 12),
                    ),
                  ),

                ],
              ),Row(
                children: [ Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 22, top: 6),
                      child:  const Text(
                        "\$ 24",
                        style: TextStyle(color: Color(0xfff00A9B7), fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 77,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(color: const Color(0xfffDCF3F5),borderRadius: BorderRadius.circular(22)),
                      margin: const EdgeInsets.only(left: 11, top: 6),
                      child:  const Text(
                        "Label",
                        style: TextStyle(color: Color(0xfff00A9B7), fontSize: 12),
                      ),
                    )
                  ],
                )],
              )
            ],
          );
        });
  }
}
