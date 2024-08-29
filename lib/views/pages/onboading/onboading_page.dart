import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/utilits/constant/image_list.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(RImages.onboardingImage),
            const SizedBox(height: 50),
            //Content && Subcontent
            const MyCustomText(
              title: RTexts.content,
              fSize: 20,
              fWeight: FontWeight.bold,
            ),
            const SizedBox(height: 15,),
            const MyCustomText(
              title: RTexts.subContent,
              tAlign: TextAlign.center,
              fSize: 16,
              mLines: 2,
            ),
            const SizedBox(height: 80),
            //CustomButton
            GestureDetector(
              onTap: () {
                Get.to(() => const SignInPage());
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: CustomContainer(
                    title: RTexts.buttonText,
                    icon: Icons.arrow_forward_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
