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
              child: const Center(
                child: Text(
                  'Bu yıl emin patilerdesin!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),


          Positioned(
            left: 88,
            top: 380,
            child: Image.asset(
              "assets/images/usto_2.png",
              width: 218,
              height: 216,
              fit: BoxFit.contain,
            ),
          ),

          Positioned(
            left: 24,
            bottom: 80,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/onboarding3'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
                  ],
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
