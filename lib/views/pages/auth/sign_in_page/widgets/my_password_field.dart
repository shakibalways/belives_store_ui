import 'package:flutter/material.dart';

class MyPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String? fieldName;
  const MyPasswordField({
    super.key,
    required this.controller,
    this.fieldName,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: '*********',
        prefixIcon: Icon(Icons.lock_person),
        suffixIcon: Icon(Icons.remove_red_eye),
        labelText: 'Password',
      ),
      validator: (value) {
        if (value == null || value == '') {
          return "password_error";
        } else if (value.toString().length < 6 && fieldName == "signUp") {
          return "password_length_error";
        }
        return null;
      },
    );
  }
}
