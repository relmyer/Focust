import 'package:flutter/material.dart';

class OzetScreen extends StatelessWidget {
  const OzetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 57,
            top: 52,
            child: Container(
              width: 314,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E4E7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: 57,
            top: 52,
            child: Container(
              width: 203,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFEA923A),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: 27,
            top: 92,
            child: Container(
              width: 78,
              height: 99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/usto_note.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 120,
            top: 104,
            child: Container(
              width: 240,
              height: 120,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "İşte 3 ayda neler başarabileceğinin bir özeti!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w400),
                softWrap: true,
              ),
            ),
          ),

          Positioned(
            left: 32,
            top: 285,
            child: _yesilDaire(),
          ),
          const Positioned(
            left: 108,
            top: 282,
            child: Text(
              "Kendine güvenle öğren",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Positioned(
            left: 108,
            top: 310,
            child: SizedBox(
              width: 250,
              child: Text(
                "Sınav stresinden uzak, günlük konu tekrarları ve deneme çalışmaları.",
                style: TextStyle(fontSize: 14, fontFamily: 'Baloo2'),
              ),
            ),
          ),

          Positioned(
            left: 33,
            top: 374,
            child: _yesilDaire(),
          ),
          const Positioned(
            left: 108,
            top: 370,
            child: Text(
              "Konu eksiklerini kapat",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Positioned(
            left: 108,
            top: 398,
            child: SizedBox(
              width: 230,
              child: Text(
                "TYT ve AYT için önemli konular ve sık çıkan soru tipleri.",
                style: TextStyle(fontSize: 14, fontFamily: 'Baloo2'),
              ),
            ),
          ),

          Positioned(
            left: 32,
            top: 463,
            child: _yesilDaire(),
          ),
          const Positioned(
            left: 108,
            top: 459,
            child: Text(
              "Düzenli çalışma alışkanlığı kazan",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Positioned(
            left: 108,
            top: 487,
            child: SizedBox(
              width: 230,
              child: Text(
                "Akıllı hatırlatmalar, haftalık hedefler ve motivasyon ödülleri.",
                style: TextStyle(fontSize: 14, fontFamily: 'Baloo2'),
              ),
            ),
          ),

          Positioned(
            left: 20,
            bottom: 30,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/planliyorum'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x3F000000), blurRadius: 4)
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Devam",
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
        ],
      ),
    );
  }

  Widget _yesilDaire() {
    return Container(
      width: 42,
      height: 42,
      decoration: const BoxDecoration(
        color: Color(0xFF418F8C),
        shape: BoxShape.circle,
      ),
    );
  }
}
