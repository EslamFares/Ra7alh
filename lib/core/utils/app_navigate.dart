import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension Go on BuildContext {
  void go(String screen) => GoRouter.of(this).push(screen);
}

void customNavigate(context, String path) {
  GoRouter.of(context).push(path);
}
