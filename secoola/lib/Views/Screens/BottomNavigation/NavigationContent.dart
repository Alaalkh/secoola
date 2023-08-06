import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secoola/Views/Screens//BottomNavigation/AccountPage.dart';
import 'package:secoola/Views/Screens/BottomNavigation/MyCourse.dart';
import 'package:secoola/Views/Screens/BottomNavigation/HomePage.dart';
import 'package:secoola/Views/Screens/BottomNavigation/Wishlistpage.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [_widget.elementAt(_currentIndex)],
        ),
      ),
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
