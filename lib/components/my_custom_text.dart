import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  final String title;
  final Color? color;
  final FontWeight? fWeight;
  final double? fSize;
  final TextAlign? tAlign;
  final int? mLines;

  const MyCustomText({
    super.key,
    required this.title,
    this.color,
    this.fWeight,
    this.fSize,
    this.tAlign,
    this.mLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: tAlign ?? TextAlign.start,
      maxLines: mLines ?? 1,
      style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: fWeight ?? FontWeight.normal,
        fontSize: fSize ?? 18,
      ),
    );
  }
}