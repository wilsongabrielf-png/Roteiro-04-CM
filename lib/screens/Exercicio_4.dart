import 'package:flutter/material.dart';

class Exercico4Screen extends StatefulWidget {
  const Exercico4Screen({super.key});

  @override
  State<Exercico4Screen> createState() => _Exercico4ScreenState();
}

class _Exercico4ScreenState extends State<Exercico4Screen> {
  bool expandido = false;

  void _alternarCard() {
    setState(() {
      expandido = !expandido;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercício 4 - Card Expansível"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _alternarCard,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: expandido ? 300 : 160,
            height: expandido ? 200 : 100,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: expandido ? Colors.teal : Colors.teal.shade300,
              borderRadius: BorderRadius.circular(expandido ? 20 : 10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: expandido ? 12 : 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  expandido ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(height: 8),
                Text(
                  expandido ? "Card Expandido!" : "Toque para expandir",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}