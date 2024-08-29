import 'package:flutter/material.dart';

class MyUserNameField extends StatelessWidget {
  final TextEditingController controller;
  const MyUserNameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
          hintText: 'abdullah al shakib',
          prefixIcon: Icon(Icons.person_outlined),
          suffixIcon: Icon(
            Icons.check,
            color: Colors.blue,
          ),
          labelText: 'Username '),
      validator: (value) {
        if (value == null || value == '') {
          return "your user name";
        }
        return null;
      },
    );
  }
}
