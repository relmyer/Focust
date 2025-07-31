import 'package:flutter/material.dart';

class WidgetOneriScreen extends StatelessWidget {
  const WidgetOneriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Ana ekranına bir widget koymak günlük hedefini takip etmek için daha kolay olur!",
              style: TextStyle(fontSize: 20, fontFamily: 'Baloo2'),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/ozet'),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text("Widget ekle",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Baloo2',
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/ozet'),
                child: const Text("Şimdi değil",
                    style: TextStyle(
                        color: Color(0xFF418F8C),
                        fontSize: 20,
                        fontFamily: 'Baloo2')))
          ],
        ),
      ),
    );
  }
}
