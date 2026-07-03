import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {

      // Later we will check if user is logged in.

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
              'assets/images/logo.png',
              width: 140,
            ),

            const SizedBox(height: 25),

            const Text(

              "Marketplace for Africans Worldwide",

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

            ),

            const SizedBox(height: 40),

            const CircularProgressIndicator(),

          ],

        ),

      ),

    );

  }

}