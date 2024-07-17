import 'package:belives_store/screens/pages/bottom_navigation/bottom_nav.dart';
import 'package:belives_store/screens/pages/user/profile.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const BelivesStore());
}

class BelivesStore extends StatelessWidget {
  const BelivesStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
