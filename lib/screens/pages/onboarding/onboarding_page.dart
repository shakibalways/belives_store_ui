


import 'package:flutter/material.dart';

import '../../../global_wieght/custom_container.dart';
import '../../../utilits/constant/image_list.dart';
import '../../../utilits/constant/text_list.dart';
import '../../../view/auth/sign_in_page/sign_in_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              RImages.onboardingImage,
            ),
            const SizedBox(
              height: 50,
            ),
            //Content && Subcontent
            const Text(
              RTexts.content,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                RTexts.subContent,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //CustomButton
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()));
                
              },
              child: const CustomContainer(
                  title: RTexts.buttonText, icon: Icons.arrow_forward_rounded),
            )
          ],
        ),
      ),
    );
  }
}
