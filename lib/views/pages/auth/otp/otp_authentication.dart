import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/utilits/constant/text_list.dart';
import 'package:flutter/material.dart';

class OtpAuthenticationPage extends StatelessWidget {
  const OtpAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.otpText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(RTexts.otpSub),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  ),
                )
              ],
            ),
            CustomContainer(title: 'Continue', icon: Icons.arrow_forward_rounded)
          ],
        ),
      ),
    );
  }
}
