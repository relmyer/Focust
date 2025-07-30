import 'package:flutter/material.dart';

void main() {
  runApp(const FocustApp());
}

class FocustApp extends StatelessWidget {
  const FocustApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color(0xFFCFEAD3),
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.4,
              left: size.width * 0.5 - 60,
              child: Text(
                'Focust',
                style: const TextStyle(
                  fontFamily: 'Baloo2',
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF418F8C),
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/splash_icon.png',
                width: size.width * 0.6,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
