import 'package:belives_store/screens/pages/order_page/my_cart.dart';
import 'package:belives_store/screens/pages/search_item/search_page.dart';
import 'package:belives_store/screens/pages/search_item/search_result.dart';
import 'package:belives_store/screens/pages/user/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  List<Widget> pages = [
    const SearchResult(),
    const SearchPage(),
    const MyCart(),
    const ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          selectedIndex: currentIndex,
            onTabChange: (index){
            setState(() {
              currentIndex=index;
            });
            },
            gap: 8,
            padding: const EdgeInsets.all(15),
            tabBackgroundColor: const Color(0xffC6AB59),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Shooping',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'User',
              ),
            ]),
      ),
      body: pages.elementAt(currentIndex),
    );
  }
}