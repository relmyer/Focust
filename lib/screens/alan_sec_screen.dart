import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AlanSecScreen extends StatelessWidget {
  const AlanSecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 18,
            top: 46,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "assets/images/geri.png",
                width: 24,
                height: 24,
              ),
            ),
          ),

          Positioned(
            top: 52,
            left: 57,
            child: LinearPercentIndicator(
              width: 314,
              lineHeight: 20,
              percent: 0.1,
              backgroundColor: const Color(0xFFE7E4E7),
              progressColor: const Color(0xFFEA923A),
              barRadius: const Radius.circular(10),
              animation: true,
              animationDuration: 600,
            ),
          ),

          Positioned(
            left: 120,
            top: 104,
            child: Container(
              width: 244,
              height: 74,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE7E4E7)),
              ),
            ),
          ),
          const Positioned(
            left: 143,
            top: 124,
            child: Text(
              'Günlük hedefin nedir?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.04,
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Positioned(left: 19, top: 270, child: _secimContainer("2 saat / gün", "temel")),
          Positioned(left: 19, top: 339, child: _secimContainer("5 saat / gün", "orta")),
          Positioned(left: 19, top: 408, child: _secimContainer("8 saat / gün", "zor")),

          Positioned(
            left: 21,
            bottom: 30,
            child: Container(
              width: 353,
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xFF418F8C),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
              ),
              child: const Center(
                child: Text(
                  'Kararlıyım',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.04,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
        ],
      ),
    );
  }
}

Widget _secimContainer(String saat, String zorluk) {
  return Container(
    width: 353,
    height: 55,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0xFFE7E4E7)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          saat,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22.04,
            fontFamily: 'Baloo2',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          zorluk,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 22.04,
            fontFamily: 'Baloo2',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
