import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/views/pages/auth/register_page/sign_up_page.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_email_field.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_facebook_container.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_password_field.dart';
import 'package:belives_store/views/pages/searchResults/search_results.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyEmailField(controller: nameController),
                  const SizedBox(height: 30),
                  MyPasswordField(controller: passController),
                ],
              ),
            ),
            // Button List
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const SearchResultPage());
                  },
                  child: const CustomContainer(
                      title: 'SIGN IN', icon: Icons.arrow_circle_right_sharp),
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
                const MyFacebookConnectContainer(title: "Connect with facebook"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
