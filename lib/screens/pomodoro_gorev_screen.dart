import 'package:flutter/material.dart';

class PomodoroGorevScreen extends StatelessWidget {
  const PomodoroGorevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Görevler & Pomodoro")),
      body: const Center(
        child: Text("Burada Pomodoro & Görev oluşturma ekranı olacak",
            style: TextStyle(fontSize: 20, fontFamily: 'Baloo2')),
      ),
    );
  }
}
