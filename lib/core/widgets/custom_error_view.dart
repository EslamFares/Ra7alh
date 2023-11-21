import 'package:flutter/material.dart';

class CustomErrorView extends StatelessWidget {
  const CustomErrorView(this.errorMsg, {super.key});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
