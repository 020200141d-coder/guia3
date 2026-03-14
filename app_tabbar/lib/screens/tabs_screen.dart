import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // número de pestañas
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: const [

              // Barra de pestañas
              TabBar(
                labelColor: Colors.black, // color seleccionado
                unselectedLabelColor: Colors.grey, // color no seleccionado
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                  Tab(text: 'Tab 4'),
                ],
              ),

              // Contenido de cada pestaña
              Expanded(
                child: TabBarView(
                  children: [

                    Icon(
                      Icons.directions_car_outlined,
                      size: 100,
                    ),

                    Icon(
                      Icons.directions_transit_filled_outlined,
                      size: 100,
                    ),

                    Icon(
                      Icons.directions_bike_sharp,
                      size: 100,
                    ),

                    Icon(
                      Icons.directions_walk_sharp,
                      size: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}