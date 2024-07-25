import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customappBar({
  final Widget? leading,
  final Widget? title,
  final List<Widget>? action,
  final Color? backgroundColor,
}) {
  return AppBar(
    leading: const Icon(Icons.arrow_back_rounded),
    title: const Text(
      "SHIPPING",
      style: TextStyle(fontSize: 16),
    ),
    centerTitle: true,
    actions: action,
  );
}


