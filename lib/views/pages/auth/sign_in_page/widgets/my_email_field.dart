import 'package:flutter/material.dart';

class MyEmailField extends StatelessWidget {
  final TextEditingController controller;
  final String ? hText;
  final String? lText;
  const MyEmailField({super.key, required this.controller, this.lText, this.hText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
          hintText:hText ?? 'E-mail',
          prefixIcon: const Icon(Icons.person_outlined),
          labelText: lText ?? 'UserName or Email'),
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
