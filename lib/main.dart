import 'package:belives_store/screens/pages/home%20page/home_page.dart';
import 'package:belives_store/screens/pages/home%20page/scan_page.dart';
import 'package:belives_store/screens/pages/home%20page/search_page.dart';
import 'package:belives_store/screens/pages/onboarding_page.dart';
import 'package:belives_store/view/auth/register_page/otp_authentication.dart';
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
      home: SearchPage(
      ),
    );
  }
}
