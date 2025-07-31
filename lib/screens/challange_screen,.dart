import 'package:flutter/material.dart';

class ChallangeScreen extends StatelessWidget {
  const ChallangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challange"),
        backgroundColor: const Color(0xFF418F8C),
      ),
      body: ListView(
        children: [
          Challange(),
        ],
      ),
    );
  }
}

class Challange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      color: Colors.white,
      child: const Center(child: Text("🎯 Burada Challange UI’n çalışacak")),
    );
  }
}
