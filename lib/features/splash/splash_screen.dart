import 'dart:async';

import '../welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
void initState() {
  super.initState();

  print("Splash screen started");

  Timer(const Duration(seconds: 3), () {
    print("Timer finished");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      ),
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              "assets/images/logo.png",
              width: 150,
            ),

            const SizedBox(height: 25),

            const Text(
              "Afrinza",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xff00875A),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Marketplace for Africans Worldwide",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 50),

            const CircularProgressIndicator(
              color: Color(0xff00875A),
            ),
          ],
        ),
      ),
    );
  }
}