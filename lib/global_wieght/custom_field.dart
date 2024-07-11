import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final String labelText;
  final Widget? suffixIcon;
  const CustomField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.labelText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextField(

        decoration: InputDecoration(

            prefix: prefixIcon,
            hintText: hintText,
            labelText: labelText,
            suffix: suffixIcon),
      ),
    );
  }
}
