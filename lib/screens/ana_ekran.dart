import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:focust/screens/challange_screen,.dart';
import 'challange_screen.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  int currentIndex = 1;
  final iconList = <IconData>[
    Icons.person,
    Icons.home,
    Icons.task,
    Icons.timer,
    Icons.flag,
  ];

  final List<Widget> pages = [
    const Center(child: Text("👤 Profil", style: TextStyle(fontSize: 22))),
    const Center(child: Text("🏠 Ana Sayfa", style: TextStyle(fontSize: 22))),
    const Center(child: Text("📋 Görevler", style: TextStyle(fontSize: 22))),
    const Center(child: Text("⏳ Pomodoro", style: TextStyle(fontSize: 22))),
  ];

  void _onTap(int index) {
    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChallangeScreen()),
      );
    } else {
      setState(() => currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF418F8C),
        onPressed: () {
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        activeColor: const Color(0xFF418F8C),
        inactiveColor: Colors.grey,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: _onTap,
      ),
    );
  }
}
