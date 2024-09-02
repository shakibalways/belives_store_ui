import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

import 'my_custom_textfield.dart';

class MyCustomBottomSheets extends StatelessWidget {
  final double height;
  final double width;
  final MainAxisAlignment? mAxisAli;
  final List<Widget> children;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  const MyCustomBottomSheets({
    super.key,
    required this.height,
    required this.width,
    this.mAxisAli,
    required this.children,
    this.child,
    this.padding, this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Padding(
                padding: padding ?? const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  physics: physics,
                  child: Column(
                    mainAxisAlignment: mAxisAli ?? MainAxisAlignment.start,
                    children: children,
                  ),
                ),
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
