import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/widgets/ios_show_dialog.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                iosShowDialog(
                    context: context,
                    title: 'Sign Out',
                    subTitle: 'out',
                    onRefuse: () {},
                    onConfirm: () {
                      FirebaseAuth.instance.signOut();
                      context.pushReplacement(AppRoutes.signInView);
                    });
              },
              icon: const Icon(FontAwesomeIcons.arrowRightFromBracket))
        ],
      ),
      body: const Center(
        child: Text(
          'HomePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
