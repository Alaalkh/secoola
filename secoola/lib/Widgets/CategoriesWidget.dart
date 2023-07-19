import 'package:flutter/cupertino.dart';

class CategoriesWidget extends StatelessWidget {
  final String image;
  final String Category;
  const CategoriesWidget({super.key, required this.image, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, top: 11),
      height: 40,
      width: 96,
      decoration: BoxDecoration(
          color: const Color(0xfffFFFFFF),
          borderRadius: BorderRadius.circular(22)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image ,
            width: 22,
          ),const SizedBox(width: 7,),
          Text(Category,style: const TextStyle(fontSize: 14),)
        ],
      ),
    );
  }
}
