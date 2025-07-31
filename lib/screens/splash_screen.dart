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
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/onboarding1');
    });
  }

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
              child: const Text(
                'Focust',
                style: TextStyle(
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
