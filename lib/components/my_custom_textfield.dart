import 'package:flutter/material.dart';

class MyCustomSearchField extends StatelessWidget {
  final String tName;
  final TextEditingController controller;

  const MyCustomSearchField({
    super.key,
    required this.tName, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: tName,
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
