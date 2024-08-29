import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final double ? height;
  final double width;
  final Color? color;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? bRadius;

  const MyCustomContainer(
      {super.key,
       this.height,
      required this.width,
      this.color,
      this.child,
      this.margin,
      this.bRadius});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:margin ,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: bRadius,
      ),
      child: child,
    );
  }
}
