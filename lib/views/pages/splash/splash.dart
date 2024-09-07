import 'package:belives_store/controller/getx/uiController/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/onboardingimage.png"),
          // Tranform Text
          const GradientAnimationText(
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
