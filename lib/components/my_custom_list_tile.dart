import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subTitle;
  final Widget? trailing;
  final IconData? lIcon;
  final String? tText;
  final String? subT;
  final IconData? tIcon;
  final double? fSize;
  final FontWeight? fWeight;
  final Color? color;

  const MyCustomListTile({
    super.key,
    this.leading,
    this.title,
    this.subT,
    this.trailing,
    this.subTitle,
    this.lIcon,
    this.tText,
    this.tIcon,
    this.fSize,
    this.fWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading ?? Icon(lIcon),
      title: title ??
          Text(
            tText!,
            style: TextStyle(
              fontWeight: fWeight ?? FontWeight.normal,
              fontSize: fSize,
              color: color,
            ),
          ),
      subtitle: subTitle ??
          Text(
            subT!,
            style: TextStyle(
              fontWeight: fWeight ?? FontWeight.normal,
            ),
          ),
      trailing: trailing ??
          Icon(
            tIcon,
          ),
    );
  }
}
