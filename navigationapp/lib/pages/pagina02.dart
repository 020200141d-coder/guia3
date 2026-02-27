import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("página 02"),
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("FIREBASE", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), ),
            Text(" Firebase es una plataforma que ...", style: TextStyle(fontSize: 16), textAlign: TextAlign.justify, ),
            SizedBox( height: 15, ),
            ElevatedButton(
              child: Row( mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Regresar a la pagina anterior", style: TextStyle(fontSize: 20), ),
                Icon(Icons.arrow_forward_ios)
              ], ),
              onPressed: () => {
                //Aca se puede incluir codigo para cualquier proceso como acceso de datos
                Navigator.pop(context)
              },
            )
          ],
        ),
      ), // Padding
    ); // Scaffold
  }
}