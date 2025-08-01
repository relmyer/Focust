import 'package:flutter/material.dart';

class PlanliyorumScreen extends StatelessWidget {
  const PlanliyorumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/streak'),
        child: Stack(
          children: [
            Positioned(
              left: 137,
              top: 305,
              child: Container(
                width: 125,
                height: 112,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/study_cat.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 131,
              top: 426,
              child: Text(
                'Planlıyorum...',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 22.0,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: 52,
              top: 461,
              child: SizedBox(
                width: 300,
                child: Text(
                  'Günde 1 saatini bile odaklanmaya ayırmak verimli bir sürekliliğin başlangıcı olabilir.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                    fontFamily: 'Baloo2',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
