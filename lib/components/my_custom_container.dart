import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  const MyCustomContainer(
      {super.key,
      this.height,
      required this.width,
      this.color,
      this.child,
      this.margin,
      this.bRadius,
      this.title,
      this.icon});
  final double? height;
  final double width;
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
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: bRadius,
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
