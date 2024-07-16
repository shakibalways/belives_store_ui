import 'dart:async';

import 'package:belives_store/screens/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>OnboardingPage(),

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/onboardingimage.png"),


          // Tranform Text
          GradientAnimationText(
            text: Text(
              'Belives Store',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            colors: [
              Color(0xffC6AB59),
              Colors.black,
            ],
            duration: Duration(seconds: 2),
              // tranform
          ),
        ],
      ),
      
    );
  }
}
