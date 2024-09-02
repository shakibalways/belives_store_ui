import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subTitle;
  final Widget? trailing;
  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;
  final IconData trailingIcon;
  final double? fSize;
  final FontWeight fWeight;
  final Color? color;
  final Color? iColor;
  final double iFSize;

  const MyCustomListTile({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.subTitle,
    required this.leadingIcon,
    required this.titleText,
    required this.subtitleText,
    required this.trailingIcon,
    this.fSize,
    required this.fWeight,
    this.color,
    this.iColor,
    required this.iFSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading ?? Icon(leadingIcon),
      title: title ??
          Text(
            titleText,
            style: TextStyle(
              fontWeight: fWeight ?? FontWeight.normal,
              fontSize: fSize,
              color: color,
            ),
          ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(
          fontWeight: fWeight ?? FontWeight.normal,
        ),
      ),
      trailing: trailing ??
          Icon(
            trailingIcon,
            size: iFSize,
            color: iColor,
          ),
    );
  }
}
