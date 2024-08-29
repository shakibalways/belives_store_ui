import 'package:flutter/material.dart';

import '../utilits/constant/color_list.dart';

class CustomContainer extends StatelessWidget {
  final double ? width;
  final String title;
  final IconData? icon;
  final double? color;

  const CustomContainer({
    super.key,
    required this.title,
    this.icon,
    this.color,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: RColors.buttonColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
