import 'package:belives_store/utilits/constant/color_list.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {super.key,
      this.height = 50,
      this.width,
      this.color,
      this.child,
      this.margin,
      this.bRadius,
      this.title,
      this.icon});
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? bRadius;
  final String? title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: RColors.buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(),
              Text(
                title ?? "",
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
