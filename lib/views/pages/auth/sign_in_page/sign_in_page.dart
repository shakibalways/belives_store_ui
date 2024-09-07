import 'package:belives_store/components/custom_loading_button.dart';
import 'package:belives_store/components/my_custom_button.dart';
import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/controller/getx/auth/signIn/sign_in.dart';
import 'package:belives_store/utilits/constant/color_list.dart';
import 'package:belives_store/utilits/constant/icon.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/views/pages/auth/register_page/sign_up_page.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCustomText(
                  title: RTexts.title,
                  fSize: 20,
                  fWeight: FontWeight.bold,
                ),
                MyCustomText(
                  title: RTexts.subTitle,
                  fSize: 15,
                  color: Colors.black87,
                ),
              ],
            ),
            // Form List
            Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomTextFormField(
                    validate: controller.emailValidate,
                    controller: controller.emailController,
                    prefixIcon: const Icon(Icons.person_outline),
                    hinText: "Enter Your Email",
                  ),
                  const SizedBox(height: 30),
                  Obx(
                    () => MyCustomTextFormField(
                      validate: controller.passwordValidate,
                      obscureText: controller.isVisibility.value,
                      suffixWidget: GestureDetector(
                          onTap: () {
                            controller.toggleVisibility();
                          },
                          child: controller.isVisibility.value
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      controller: controller.passwordController,
                      lText: "Password",
                      prefixIcon: Icon(Icons.key,
                          size: 25, color: Colors.black.withOpacity(0.2)),
                    ),
                  ),
                ],
              ),
            ),
            // Button List
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => controller.isLoading.value
                      ? CustomLoadingButton(
                          color: RColors.buttonColor,
                          child: Image.asset(
                            RIcons.loading,
                            height: 40,
                            width: 40,
                          ),
                        )
                      : MyCustomButton(
                          onTap: () async {
                            await controller.getSubmit();
                          },
                          title: "SIGN IN",
                          icon: Icons.arrow_circle_right_sharp,
                        ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCustomText(
                      title: "Don't have an account?",
                      fSize: 16,
                      color: Colors.grey[600],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const MyCustomText(
                        title: 'Sign Up',
                        fWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                // const MyFacebookConnectContainer(
                //     title: "Connect with facebook"),
                MyCustomButton(
                  color: RColors.buttonColor1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/fblogo.png'),
                      const MyCustomText(
                        title: "Connect with facebook",
                        fSize: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
