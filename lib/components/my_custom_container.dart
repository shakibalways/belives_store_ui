import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? bRadius;

  const MyCustomContainer(
      {super.key,
      required this.height,
      required this.width,
      this.color,
      this.child,
      this.margin,
      this.bRadius});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
