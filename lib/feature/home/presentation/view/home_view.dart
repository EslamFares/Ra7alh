import 'package:flutter/material.dart';
import '../widgets/custom_home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHomeAppBar(),
      body: Center(
        child: Text(
          'HomePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
