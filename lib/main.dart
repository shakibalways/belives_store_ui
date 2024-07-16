

import 'package:belives_store/screens/pages/catagories/catagories_page.dart';
import 'package:belives_store/screens/pages/order_page/order_complete.dart';
import 'package:belives_store/screens/pages/order_page/order_failed.dart';
import 'package:belives_store/screens/pages/order_page/order_review.dart';
import 'package:belives_store/screens/pages/payment_method/add_new_card.dart';
import 'package:belives_store/screens/pages/payment_method/payment_method.dart';
import 'package:belives_store/screens/pages/search_item/search_result.dart';
import 'package:belives_store/screens/pages/onboarding/onboarding_page.dart';
import 'package:belives_store/screens/pages/splash_screen/splash_screen.dart';
import 'package:belives_store/screens/pages/user/profile.dart';
import 'package:belives_store/view/auth/register_page/sign_up_page.dart';
import 'package:belives_store/view/auth/sign_in_page/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BelivesStore());

}
class BelivesStore extends StatelessWidget {
  const BelivesStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderFailed(
      ),
    );
  }
}
