import 'package:flutter/material.dart';

class AlanSecScreen extends StatefulWidget {
  const AlanSecScreen({super.key});

  @override
  State<AlanSecScreen> createState() => _AlanSecScreenState();
}

class _AlanSecScreenState extends State<AlanSecScreen> {
  String seciliAlan = "";

  Widget alanButon(String text) {
    final bool aktif = seciliAlan == text;
    return GestureDetector(
      onTap: () {
        setState(() => seciliAlan = text);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: 353,
        height: 55,
        decoration: BoxDecoration(
          color: aktif ? const Color(0xFF418F8C) : Colors.white,
          border: Border.all(color: const Color(0xFFE7E4E7)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: aktif ? Colors.white : Colors.black,
              fontSize: 22,
              fontFamily: 'Baloo2',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          children: [
            const Text(
              "Alanın nedir?",
              style: TextStyle(fontSize: 22, fontFamily: 'Baloo2'),
            ),
            const SizedBox(height: 40),
            alanButon("Sayısal (MF)"),
            alanButon("Eşit Ağırlık (TM)"),
            alanButon("Dil (YDT)"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (seciliAlan.isNotEmpty) {
                  Navigator.pushNamed(context, '/hedef');
                }
              },
              child: Container(
                width: double.infinity,
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
