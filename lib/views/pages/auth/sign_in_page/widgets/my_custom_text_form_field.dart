import 'package:flutter/material.dart';

class MyCustomTextFormField extends StatelessWidget {
  const MyCustomTextFormField({
    super.key,
    required this.controller,
    this.hinText,
    this.prefixIcon,
    this.suffixWidget,
    this.height,
    this.lText,
    this.textInputType,
    this.obscureText,
    this.validate,
  });

  final TextEditingController controller;
  final String? hinText;
  final Icon? prefixIcon;
  final Widget? suffixWidget;
  final double? height;
  final String? lText;
  final TextInputType? textInputType;
  final bool? obscureText;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        labelText: lText,
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
        suffixIcon: suffixWidget,
        prefixIcon: prefixIcon,
        hintText: hinText ?? "",
        filled: true,
        fillColor: Colors.grey.shade300,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
