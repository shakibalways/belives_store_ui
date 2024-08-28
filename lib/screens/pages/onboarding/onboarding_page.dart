import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/utilits/constant/image_list.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/view/auth/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';


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
