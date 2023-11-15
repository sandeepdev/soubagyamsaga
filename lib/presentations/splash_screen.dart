import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottery_results_app/const.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: const Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage('asset/craiyon_175105_simple_swirl_logo.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'SoubhagyamSaga',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: primecolor,
        nextScreen: HomeScreen());
  }
}
