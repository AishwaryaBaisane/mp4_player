import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mp4_player/screen/Mainscreen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: AnimatedSplashScreen(
          duration: 4000,
          splash: Center(
            child: Image.asset(
              'assets/img/Projector.gif',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          nextScreen: const MainScreen(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: screenHeight * 0.5,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
