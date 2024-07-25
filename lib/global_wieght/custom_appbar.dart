
import 'package:flutter/material.dart';

PreferredSizeWidget customappBar({
  final Widget? leading,
  final Widget? title,
  final List<Widget>? action,
  final Color? backgroundColor,
}) {
  return AppBar(
    leading: const Icon(Icons.arrow_back_rounded),
    title: title,
    centerTitle: true,
    actions: [
      Icon(Icons.more_horiz)
    ],
  );
}


