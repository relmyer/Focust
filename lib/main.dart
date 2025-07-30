import 'package:flutter/material.dart';

void main() {
  runApp(const FocustApp());
}


class FocustApp extends StatelessWidget {
  const FocustApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SplashScreen(),
        ]),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: const Color(0xFFCFEAD3)),
          child: Stack(
            children: [
              Positioned(
                left: -632.22,
                top: -30.61,
                child: Container(
                  width: 1074.28,
                  height: 901.98,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/1074x902"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 116,
                top: 317,
                child: Text(
                  'Focust',
                  style: TextStyle(
                    color: const Color(0xFF418F8C),
                    fontSize: 52.72,
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}