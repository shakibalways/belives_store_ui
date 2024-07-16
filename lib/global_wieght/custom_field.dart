import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hintText;
  final Widget prefixIcon;
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  const CustomField(
      {super.key,
       this.hintText,
      required this.prefixIcon,
      required this.labelText,
      this.suffixIcon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: TextField(
        controller:controller ,

        decoration: InputDecoration(

            prefix: prefixIcon,
            hintText: hintText,
            labelText: labelText,
            suffix: suffixIcon),
      ),
    );
  }
}
