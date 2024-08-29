import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/utilits/constant/color_list.dart';
import 'package:flutter/material.dart';

class MyFacebookConnectContainer extends StatelessWidget {
  final String title;
  const MyFacebookConnectContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: RColors.buttonColor1,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/fblogo.png'),
          MyCustomText(
            title: title,
            fSize: 15,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
