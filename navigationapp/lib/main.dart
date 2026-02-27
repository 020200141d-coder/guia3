// ACTIVIDAD 3 - Uso de Navigator
// AUTOR: MPVV

import 'package:flutter/material.dart';
import 'package:navigationapp/pages/pagina02.dart';

void main() {
  runApp(const MyApp());
}

// Widget principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Página 01: Navegando :D'),
    );
  }
}

// Primera página
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("Ir a la página 02"),
              onPressed: () {
                // Navegar a la segunda página
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Pagina02(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}