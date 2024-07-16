import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex =0;
  List pages =[

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            gap: 8,
            padding: EdgeInsets.all(15),
            tabBackgroundColor: Color(0xffC6AB59),
            tabs: [
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
    );
  }

