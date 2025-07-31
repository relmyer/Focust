import 'package:flutter/material.dart';

class HedefSecScreen extends StatefulWidget {
  const HedefSecScreen({super.key});

  @override
  State<HedefSecScreen> createState() => _HedefSecScreenState();
}

class _HedefSecScreenState extends State<HedefSecScreen> {
  String seciliHedef = "";

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
              Text(saat,
                  style: TextStyle(
                      color: aktif ? Colors.white : Colors.black,
                      fontSize: 22,
                      fontFamily: 'Baloo2',
                      fontWeight: FontWeight.w600)),
              Text(zorluk,
                  style: TextStyle(
                      color: aktif ? Colors.white70 : Colors.black54,
                      fontSize: 20,
                      fontFamily: 'Baloo2')),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text("Günlük hedefin nedir?",
                style: TextStyle(fontSize: 22, fontFamily: 'Baloo2')),
            const SizedBox(height: 30),
            hedefKart("2 saat / gün", "temel"),
            hedefKart("5 saat / gün", "orta"),
            hedefKart("8 saat / gün", "zor"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (seciliHedef.isNotEmpty) {
                  Navigator.pushNamed(context, '/widgetOneri');
                }
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF418F8C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text("Kararlıyım",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Baloo2',
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
