import 'package:belives_store/views/pages/cart/cart.dart';
import 'package:belives_store/views/pages/search/search.dart';
import 'package:belives_store/views/pages/searchResults/search_results.dart';
import 'package:belives_store/views/pages/user_profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int currentIndex = 0;


  List<Widget> pages = [
    const SearchResultPage(),
    const SearchPage(),
    const CartPage(),
    const UserProfilePage(),
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