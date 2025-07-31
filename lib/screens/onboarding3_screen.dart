import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // BURAYA senin görselin
          const Positioned(
            left: 100,
            top: 120,
            child: Text(
              'Günlük hedefin nedir?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 21,
            top: 769,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/hedef'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Kararlıyım',
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
