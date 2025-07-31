import 'package:flutter/material.dart';

class OzetScreen extends StatelessWidget {
  const OzetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text("İşte 3 ayda neler başarabileceğinin bir özeti!",
                style: TextStyle(fontSize: 22, fontFamily: 'Baloo2')),
            const SizedBox(height: 20),
            // Kartlar
            const ListTile(
                leading: Icon(Icons.check_circle, color: Color(0xFF418F8C)),
                title: Text("Kendine güvenle öğren")),
            const ListTile(
                leading: Icon(Icons.check_circle, color: Color(0xFF418F8C)),
                title: Text("Konu eksiklerini kapat")),
            const ListTile(
                leading: Icon(Icons.check_circle, color: Color(0xFF418F8C)),
                title: Text("Düzenli çalışma alışkanlığı kazan")),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/planliyorum'),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text("Devam",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Baloo2',
                          fontWeight: FontWeight.w600)),
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
