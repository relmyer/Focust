import 'package:flutter/material.dart';

class TamamlaEkrani extends StatelessWidget {
  const TamamlaEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 62,
            top: 350,
            child: Container(
              width: 125,
              height: 112,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/study_car.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            left: 60,
            top: 250,
            child: Container(
              width: 280,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
                ],
              ),
              child: const Text(
                "Serini kaybetme. Hadi sana bir profil oluşturalım!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Baloo2',
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          Positioned(
            left: 20,
            bottom: 100,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profilOlustur'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 4))
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Profilini oluştur',
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

          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/anaEkran'),
                child: const Text(
                  'Sonra',
                  style: TextStyle(
                    color: Color(0xFF418F8C),
                    fontSize: 20,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w600,
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
