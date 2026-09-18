import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício 2 - Animação de Ícone',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Exercicio2Page(),
    );
  }
}

class Exercicio2Page extends StatefulWidget {
  const Exercicio2Page({super.key});

  @override
  State<Exercicio2Page> createState() => _Exercicio2PageState();
}

class _Exercicio2PageState extends State<Exercicio2Page> {
  // Variável de estado para controlar se o ícone está expandido ou não
  bool _isExpanded = false;

  void _alternarTamanho() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2 - Ícone Animado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: _isExpanded ? 150.0 : 60.0,
              height: _isExpanded ? 150.0 : 60.0,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.favorite,
                  size: _isExpanded ? 80.0 : 30.0,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Botão para disparar a animação
            ElevatedButton.icon(
              onPressed: _alternarTamanho,
              icon: const Icon(Icons.play_arrow),
              label: Text(_isExpanded ? 'Diminuir Ícone' : 'Aumentar Ícone'),
            ),
          ],
        ),
      ),
    );
  }
}