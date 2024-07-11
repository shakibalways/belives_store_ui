import 'package:flutter/material.dart';

import '../../../global_wieght/custom_container.dart';
import '../../../global_wieght/custom_field.dart';
import '../../../utilits/constant/text_list.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Form List
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.getting,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  RTexts.sub,
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(
                  height: 3,
                ),
                CustomField(
                    hintText: 'shakibmohammad18@gmail.com',
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Email'),
                SizedBox(
                  height: 30,
                ),
                CustomField(
                    hintText: 'abdullah al shakib',
                    prefixIcon: Icon(Icons.person_outlined),
                    suffixIcon: Icon(
                      Icons.check,
                      color: Colors.blue,
                    ),
                    labelText: 'Username '),
                SizedBox(
                  height: 30,
                ),
                CustomField(
                    hintText: '*********',
                    prefixIcon: Icon(Icons.lock_person),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password'),
              ],
            ),

            // Button List
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomContainer(
                      title: 'SIGN UP', icon: Icons.arrow_circle_right_sharp),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(text: "Don't have an account?"),
                        TextSpan(
                            text: " Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black)),
                      ])),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xff3C79E6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/fblogo.png'),
                        const Text(
                          "Connect with Facebook",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
