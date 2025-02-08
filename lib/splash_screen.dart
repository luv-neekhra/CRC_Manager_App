import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crc_manager/mode.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LottieBuilder.asset(
              "assets/lottie/Animation - 1729269875596.json",
              height: 350,
            ),
          ),
          SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('CRC Manager',
                      textStyle: const TextStyle(fontWeight: FontWeight.w700),
                      speed: const Duration(milliseconds: 200)),
                ],
              ),
            ),
          ),
        ],
      ),
      nextScreen: ModePage(),
      splashIconSize: 400,
      backgroundColor: Color(0xFFCADCFC),
      duration: 2500,
    );
  }
}
