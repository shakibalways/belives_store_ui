import 'package:belives_store/screens/pages/bottom_navigation/bottom_nav.dart';
import 'package:belives_store/screens/pages/catagories/catagories_page.dart';
import 'package:belives_store/screens/pages/map_location/map_location_address.dart';
import 'package:belives_store/screens/pages/payment_method/add_new_card.dart';
import 'package:belives_store/screens/pages/search_item/search_page.dart';
import 'package:belives_store/screens/pages/single_product_view/product_view.dart';
import 'package:belives_store/screens/pages/user/profile.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const BelivesStore());
}

class BelivesStore extends StatelessWidget {
  const BelivesStore({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationAddress(),
    );
  }
}
