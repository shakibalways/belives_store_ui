import 'package:flutter/material.dart';

class MyCustomSearchField extends StatelessWidget {
  final String hintName;
  final TextEditingController controller;

  const MyCustomSearchField({
    super.key,
    required this.hintName,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintName,
        suffixIcon: const Icon(Icons.search),
        filled: true,
        hoverColor: const Color(0xfff2f2f2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
