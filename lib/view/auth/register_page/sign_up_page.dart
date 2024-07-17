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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Form List
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.getting,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  RTexts.sub,
                  style: TextStyle(color: Colors.black87),
                ),
                CustomField(
                    controller: gmailController,
                    hintText: 'shakibmohammad18@gmail.com',
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Email'),
                SizedBox(
                  height: 30,
                ),
                CustomField(
                    controller: nameController,
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
                    controller: passController,
                    hintText: '*********',
                    prefixIcon: Icon(Icons.lock_person),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password'),
              ],
            ),
              SizedBox(height: 10,),


              // Button List
              Column(
                children: [
                  const CustomContainer(
                      title: 'SIGN UP', icon: Icons.arrow_circle_right_sharp),
                  const SizedBox(
                    height: 15,
                  ),
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
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 50,
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
