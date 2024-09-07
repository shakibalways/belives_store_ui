import 'package:belives_store/components/my_custom_container.dart';
import 'package:belives_store/components/my_custom_text.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(RImages.onboardingImage),
            //Content && Subcontent
            const Column(
              children: [
                MyCustomText(
                  title: RTexts.content,
                  fSize: 20,
                  fWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: MyCustomText(
                    title: RTexts.subContent,
                    tAlign: TextAlign.center,
                    fSize: 16,
                    mLines: 2,
                  ),
                ),
              ],
            ),

            // const SizedBox(height: 80),
            //CustomButton
            GestureDetector(
              onTap: () {
                Get.offAll(() => const SignInPage());
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: MyCustomButton(
                  title: RTexts.wButtonText,
                  icon: Icons.arrow_forward,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
