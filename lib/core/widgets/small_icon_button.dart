import 'package:flutter/material.dart';

class SmallIconButton extends StatelessWidget {
  const SmallIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.iconSize,
      this.color});
  final IconData icon;
  final Function onPressed;
  final double? iconSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 20,
        onPressed: () {
          onPressed();
        },
        icon: Icon(
          icon,
          color: color ?? Colors.black,
          size: iconSize ?? 20,
        ));
  }
}
