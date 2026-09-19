import 'package:flutter/material.dart';

class Exercico5Screen extends StatefulWidget {
  const Exercico5Screen({super.key});

  @override
  State<Exercico5Screen> createState() => _Exercico5ScreenState();
}

class _Exercico5ScreenState extends State<Exercico5Screen> {
  bool ativado = false;

  void _alternarEstado() {
    setState(() {
      ativado = !ativado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercício 5 - Animação Combinada"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: ativado ? 250 : 120,
              height: ativado ? 180 : 120,
              decoration: BoxDecoration(
                color: ativado ? Colors.purple : Colors.orange,
                borderRadius: BorderRadius.circular(ativado ? 20 : 8),
              ),
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: ativado ? 1.0 : 0.0,
                child: const Text(
                  "Texto Animado",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _alternarEstado,
              child: const Text("Alternar Animação"),
            ),
          ],
        ),
      ),
    );
  }
}