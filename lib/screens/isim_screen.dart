import 'package:flutter/material.dart';

class IsimScreen extends StatelessWidget {
  const IsimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Positioned(
            top: 100,
            left: 20,
            child: Text('Sana ne diye seslenelim?',
                style: TextStyle(fontSize: 22, fontFamily: 'Baloo2')),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/hedef'),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text('Devam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Baloo2')),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
