import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Probar el scroll del TabBar con 10 tabs
      length: 10,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                  Tab(text: 'Tab 4'),
                  Tab(text: 'Tab 5'),
                  Tab(text: 'Tab 6'),
                  Tab(text: 'Tab 7'),
                  Tab(text: 'Tab 8'),
                  Tab(text: 'Tab 9'),
                  Tab(text: 'Tab 10'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car_outlined, size: 100),
                    Icon(Icons.directions_transit_filled_outlined, size: 100),
                    Icon(Icons.directions_bike_sharp, size: 100),
                    Icon(Icons.directions_walk_sharp, size: 100),
                    Icon(Icons.directions_boat, size: 100),
                    Icon(Icons.directions_bus, size: 100),
                    Icon(Icons.directions_railway, size: 100),
                    Icon(Icons.flight, size: 100),
                    Icon(Icons.motorcycle, size: 100),
                    Icon(Icons.pedal_bike, size: 100),
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