/*  AUTOR: MPVV  */

import 'package:app_tabbar/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // Ejecuta la aplicación Flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta DEBUG
      title: 'Material App',

      // ruta inicial de la aplicación
      initialRoute: 'tabs',

      // rutas de navegación
      routes: {
        'tabs': (context) => const TabsScreen(),
      },
    );
  }
}