import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomIcon extends StatelessWidget {
  const MyCustomIcon({super.key, required this.icon, this.fSize, this.color});
  final IconData icon;
  final double? fSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 35,
      color: Colors.white,
    );
  }
}
