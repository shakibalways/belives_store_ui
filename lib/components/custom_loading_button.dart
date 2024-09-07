import 'package:belives_store/utilits/constant/color_list.dart';
import 'package:flutter/material.dart';

class CustomLoadingButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  const CustomLoadingButton({
    super.key,
    this.height,
    this.width,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height ?? 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? RColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child ??
            const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
      ),
    );
  }
}
