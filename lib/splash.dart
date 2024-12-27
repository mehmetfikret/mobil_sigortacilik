import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_sigorta/base_scaffold/base_scaffold.dart';
import 'package:flutter_sigorta/login/login_or_register_page.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      splashIconSize: 600,
      backgroundColor: const Color(0xFFF0EFEB),
      nextScreen:  const BaseScaffold(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 13,
      //pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}
