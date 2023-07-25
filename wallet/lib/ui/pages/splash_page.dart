import 'package:flutter/material.dart';
import 'package:wallet/shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        body: Center(
          child: Container(
            height: 50,
            width: 155,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_dark.png'))),
          ),
        ));
  }
}
