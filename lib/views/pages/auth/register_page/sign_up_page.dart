import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_field.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/views/pages/auth/register_page/widgets/my_user_name_field.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_email_field.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_facebook_container.dart';
import 'package:belives_store/views/pages/auth/sign_in_page/widgets/my_password_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController gmailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    title: RTexts.getting,
                    fSize: 25,
                    fWeight: FontWeight.bold,
                  ),
                  MyCustomText(
                    title: RTexts.sub,
                    fSize: 15,
                    color: Colors.black87,
                  )
                ],
              ),
              // Form List
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyUserNameField(controller: nameController),
                  const SizedBox(height: 30),
                  MyEmailField(
                    controller: gmailController,
                    hText: "shakibmohammad18@gmail.com",
                    lText: "E-mail",
                  ),
                  const SizedBox(height: 30),
               MyPasswordField(controller: passController),
                ],
              ),
              const SizedBox(height: 10),

              // Button List
              Column(
                children: [
                  const CustomContainer(
                      title: 'SIGN UP', icon: Icons.arrow_circle_right_sharp),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SearchResult()));
                          },
                          child:
                          const MyCustomText(title: "Sign In",fWeight: FontWeight.bold,)
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const MyFacebookConnectContainer(title: 'Connect with facebook',)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

