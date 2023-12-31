import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secoola/Views/Screens/AccountPages/AccountPage.dart';
import 'package:secoola/Views/Screens/Mycourse/MyCourse.dart';
import 'package:secoola/Views/Screens/Home/HomePage.dart';
import 'package:secoola/Views/Screens/Wishlist/Wishlistpage.dart';

class NavigationContent extends StatefulWidget {
  const NavigationContent({super.key});

  @override
  State<NavigationContent> createState() => _NavigationContentState();
}

class _NavigationContentState extends State<NavigationContent> {
  int _currentIndex = 0;
  final List<Widget> _widget = <Widget>[
    const HomePage(),
    const MyCourse(),
    const WishlistPage(),
    const AccontPage()
  ]; final List<String> titles = <String>[
    "HomePage",
    " MyCourse",
    " WishlistPage",
    " AccontPage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widget[_currentIndex],
      backgroundColor: Color(0xfffFAFAFA),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        selectedItemColor: Color(0xfff00A9B7),
        unselectedItemColor: Color(0xfffCACACA),
        items: const [
          BottomNavigationBarItem(
            label: "Explore",
            icon: Icon(
              Icons.explore,
            ),
          ),
          BottomNavigationBarItem(
            label: "My Course",
            icon: Icon(Icons.book_rounded),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
