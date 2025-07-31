import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 74,
            top: 298,
            child: Container(
              width: 253,
              height: 74,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            left: 89,
            top: 318,
            child: Text(
              'Bu yıl emin patilerdesin!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 88,
            top: 353,
            child: Container(
              width: 218,
              height: 216,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/218x216"),
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
              onTap: () => Navigator.pushNamed(context, '/onboarding3'),
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
