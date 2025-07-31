import 'package:flutter/material.dart';

class PlanliyorumScreen extends StatelessWidget {
  const PlanliyorumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.access_time, size: 80, color: Color(0xFF418F8C)),
            SizedBox(height: 20),
            Text("Planlıyorum...",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w600)),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  "Günde 1 saatini bile odaklanmaya ayırmak verimli bir sürekliliğin başlangıcı olabilir.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontFamily: 'Baloo2')),
            ),
          ],
        ),
      ),
    );
  }
}
