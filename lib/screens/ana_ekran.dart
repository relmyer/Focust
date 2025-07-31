import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Center(child: Text("🏠 Ana Sayfa", style: TextStyle(fontSize: 22))),
    const Center(child: Text("📋 Görevler", style: TextStyle(fontSize: 22))),
    const Center(child: Text("👤 Profil", style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: const Color(0xFF418F8C),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "Görevler"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
