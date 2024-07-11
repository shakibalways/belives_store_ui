import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilits/constant/color_list.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomContainer({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(

      height: 50,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(int.parse(RColors.buttonColor))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Text(title,style: TextStyle(color: Colors.white),),
          Icon(icon,color: Colors.white,),
        ],
      ),
    );
  }
}
