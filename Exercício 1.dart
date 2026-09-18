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
      title: 'Exercícios de Animação',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Exercicio1Page(),
    );
  }
}

class Exercicio1Page extends StatefulWidget {
  const Exercicio1Page({super.key});

  @override
  State<Exercicio1Page> createState() => _Exercicio1PageState();
}

class _Exercicio1PageState extends State<Exercicio1Page> {
 
  double _altura = 100.0;
  Color _cor = Colors.blue;

  void _animar() {
    setState(() {
      _altura = _altura == 100.0 ? 250.0 : 100.0;
      _cor = _cor == Colors.blue ? Colors.red : Colors.blue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 1 - AnimatedContainer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: 150.0,
              height: _altura,
              color: _cor,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _animar,
              child: const Text('Animar'),
            ),
          ],
        ),
      ),
    );
  }
}