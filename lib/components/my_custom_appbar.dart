import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.automaticallyImplyLeading,
    this.bColor,
    this.leading,
    this.title,
  });
  final Widget? leading;
  final Widget? title;
  final bool? automaticallyImplyLeading;
  final Color? bColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      toolbarHeight: 80,
      backgroundColor: bColor,
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
      title: title,
      centerTitle: true,
      actions: const [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
