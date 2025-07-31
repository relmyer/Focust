import 'package:flutter/material.dart';

class ProfilOlusturScreen extends StatelessWidget {
  const ProfilOlusturScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Positioned(
            top: 300,
            left: 80,
            child: Text(
              'Serini kaybetme. Hadi sana bir profil oluşturalım!',
              style: TextStyle(fontSize: 22, fontFamily: 'Baloo2'),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/isim'),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text('Profilini oluştur',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Baloo2')),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 150,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/anaEkran'),
              child: const Text('Sonra',
                  style: TextStyle(
                      color: Color(0xFF418F8C),
                      fontSize: 22,
                      fontFamily: 'Baloo2')),
            ),
          ),
        ],
      ),
    );
  }
}
