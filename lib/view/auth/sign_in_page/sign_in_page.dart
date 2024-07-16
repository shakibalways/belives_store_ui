import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_field.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:belives_store/view/auth/register_page/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../screens/pages/search_item/search_result.dart';

class SignInPage extends StatefulWidget {


   SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController nameController =TextEditingController();
  final TextEditingController passController =TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Form List
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RTexts.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                RTexts.subTitle,
                style: TextStyle(color: Colors.black87),
              ),
              SizedBox(
                height: 80,
              ),
              CustomField(
                controller: nameController ,
                  hintText: 'UserName',
                  prefixIcon: Icon(Icons.person_outlined),
                  labelText: 'UserName or Email'),
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
          // Button List
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 InkWell(
                   onTap:() async {
                     SharedPreferences prefs = await SharedPreferences.getInstance();

                    if(nameController.text.isNotEmpty && passController.text.isNotEmpty){
                  await prefs.setString('name', nameController.text.toString());
                  await prefs.setString('pass', passController.text.toString());
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchResult()));
                    }else{
                      print("Confirm Your All Information");
                    }
                   },
                   child: CustomContainer(
                      title: 'SIGN IN', icon: Icons.arrow_circle_right_sharp),
                 ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.grey[600]),),
                    InkWell(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                // RichText(
                //     text: const TextSpan(
                //         style: TextStyle(color: Colors.black),
                //         children: [
                //       TextSpan(text: "Don't have an account?"),
                //       TextSpan(
                //           text: " Sign up",
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 18,
                //               color: Colors.black)),
                //     ])),
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
    );
  }
}
