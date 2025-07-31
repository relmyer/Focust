import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 96,
            top: 298,
            child: Container(
              width: 200,
              height: 74,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            left: 125,
            top: 318,
            child: Text(
              'Hey! Ben Usto!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 91,
            top: 358,
            child: Container(
              width: 212,
              height: 212,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/212x212"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // DEVAM BUTONU
          Positioned(
            left: 24,
            top: 664,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/onboarding2'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Devam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Baloo2',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
