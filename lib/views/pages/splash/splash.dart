
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
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
