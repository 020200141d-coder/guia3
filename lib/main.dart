// AUTOR: MPVV

import 'package:flutter/material.dart';
import 'package:guia03/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabBar App',
      initialRoute: 'tabs',
      routes: {
        'tabs': (context) => const TabsScreen(),
      },
    );
  }
}