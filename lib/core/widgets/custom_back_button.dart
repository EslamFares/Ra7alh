import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BackButtonCupertino extends StatelessWidget {
  const BackButtonCupertino({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(CupertinoIcons.back, size: 30),
        splashRadius: 24);
  }
}
