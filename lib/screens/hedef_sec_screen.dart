import 'package:flutter/material.dart';

class HedefSecScreen extends StatefulWidget {
  const HedefSecScreen({super.key});

  @override
  State<HedefSecScreen> createState() => _HedefSecScreenState();
}

class _HedefSecScreenState extends State<HedefSecScreen> {
  String seciliHedef = "";
  bool hedefBelirlendi = false;

  Widget hedefKart(String saat, String zorluk) {
    final aktif = seciliHedef == saat;
    return GestureDetector(
      onTap: () => setState(() => seciliHedef = saat),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: aktif ? const Color(0xFF418F8C) : Colors.white,
          border: Border.all(color: const Color(0xFFE7E4E7)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                saat,
                style: TextStyle(
                  color: aktif ? Colors.white : Colors.black,
                  fontSize: 22,
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                zorluk,
                style: TextStyle(
                  color: aktif ? Colors.white70 : Colors.black54,
                  fontSize: 20,
                  fontFamily: 'Baloo2',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
            left: 18,
            top: 46,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "assets/images/geri.png",
                width: 24,
                height: 24,
              ),
            ),
          ),

          Positioned(
            left: 57,
            top: 52,
            child: Container(
              width: 314,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E4E7),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: 57,
            top: 52,
            child: Container(
              width: hedefBelirlendi ? 114 : 25,
              height: 20,
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
              width: hedefBelirlendi ? 239 : 244,
              height: hedefBelirlendi ? 107 : 74,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE7E4E7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: hedefBelirlendi
                  ? Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Bu haftada',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Baloo2'),
                    ),
                    TextSpan(
                      text: _haftalikSaat(),
                      style: const TextStyle(
                          color: Color(0xFF418F8C),
                          fontSize: 22,
                          fontFamily: 'Baloo2'),
                    ),
                    const TextSpan(
                      text: ' yapar!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Baloo2'),
                    ),
                  ],
                ),
              )
                  : const Text(
                "Günlük hedefin nedir?",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Baloo2',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),

          Positioned.fill(
            top: 200,
            bottom: 100,
            child: hedefBelirlendi
                ? const SizedBox()
                : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  hedefKart("2 saat / gün", "temel"),
                  hedefKart("5 saat / gün", "orta"),
                  hedefKart("8 saat / gün", "zor"),
                ],
              ),
            ),
          ),

          Positioned(
            left: 21,
            bottom: 30,
            child: GestureDetector(
              onTap: () {
                if (seciliHedef.isNotEmpty) {
                  Navigator.pushNamed(context, '/widgetOneri');
                }
              },
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
                    'Kararlıyım',
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
        ],
      ),
    );
  }

  String _haftalikSaat() {
    switch (seciliHedef) {
      case "2 saat / gün":
        return " 14 saat";
      case "5 saat / gün":
        return " 35 saat";
      case "8 saat / gün":
        return " 56 saat";
      default:
        return "";
    }
  }
}
