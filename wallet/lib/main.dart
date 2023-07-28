import 'package:flutter/material.dart';
import 'package:wallet/ui/pages/onboarding_page.dart';
import 'package:wallet/ui/pages/sign_in_page.dart';
import 'package:wallet/ui/pages/sign_up_page.dart';
import 'package:wallet/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
      },
    );
  }
}
