import 'package:flutter/material.dart';

class MyEmailField extends StatelessWidget {
  final TextEditingController controller;
  const MyEmailField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
          hintText: 'UserName',
          prefixIcon: Icon(Icons.person_outlined),
          labelText: 'UserName or Email'),
      validator: (value) {
        if (value == null || value == '') {
          return "email_error";
        } else if (!(value.contains("@") && value.contains("."))) {
          return "wrong_email_error";
        }
        return null;
      },
    );
  }
}
