import 'package:flutter/material.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 138,
            top: 406,
            child: Container(
              width: 125,
              height: 112,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/study_cat.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 72,
            top: 290,
            child: Container(
              width: 278,
              height: 82,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Serini kaybetme. Hadi sana bir profil oluşturalım!",
                style: TextStyle(fontSize: 22, fontFamily: 'Baloo2'),
              ),
            ),
          ),

          Positioned(
            left: 20,
            top: 693,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/tamamla'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 4)
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Profilini oluştur',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Baloo2',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: 168,
            top: 769,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/tamamla'),
              child: const Text(
                'Sonra',
                style: TextStyle(
                  color: Color(0xFF418F8C),
                  fontSize: 22,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
