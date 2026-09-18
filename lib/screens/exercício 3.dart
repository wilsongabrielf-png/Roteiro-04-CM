import 'package:flutter/material.dart';

class ExercicoScreen extends StatefulWidget {
  const ExercicoScreen({super.key});

  @override
  State<ExercicoScreen> createState() => _ExercicoScreenState();
}

class _ExercicoScreenState extends State<ExercicoScreen> {
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
        title: const Text("Animação Combinada"),
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