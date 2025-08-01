import 'package:flutter/material.dart';

class WidgetOneriScreen extends StatelessWidget {
  const WidgetOneriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
            left: 18,
            top: 50,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "assets/images/geri.png",
                width: 26,
                height: 26,
              ),
            ),
          ),


          Positioned(
            left: 50,
            top: 54,
            child: Container(
              width: 320,
              height: 18,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E4E7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: 50,
            top: 54,
            child: Container(
              width: 200,
              height: 18,
              decoration: BoxDecoration(
                color: const Color(0xFFEA923A),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: 27,
            top: 92,
            child: Container(
              width: 78,
              height: 99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/usto_note.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 120,
            top: 104,
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 240,
                minHeight: 100,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Ana ekranına bir widget koymak günlük hedefini takip etmek için daha kolay olur!",
                style: TextStyle(fontSize: 18, fontFamily: 'Baloo2'),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          ),

          Positioned(
            left: 15,
            top: 300,
            child: Container(
              width: 340,
              height: 340,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/usto_widget.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            left: 21,
            bottom: 90,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/ozet'),
              child: Container(
                width: 353,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x3F000000), blurRadius: 4)
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Widget ekle",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Baloo2',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/ozet'),
                child: const Text(
                  "Şimdi değil",
                  style: TextStyle(
                      color: Color(0xFF418F8C),
                      fontSize: 20,
                      fontFamily: 'Baloo2'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
