import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          AppStrings.skip,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
