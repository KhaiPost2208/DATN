import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            toolbarOpacity: 0.5,
            bottom: TabBar(
              tabs: [
                Tab(child: Column(
                  children: [
                    Image.asset(
                      'assets/pho.png',
                    ),
                  ],
                ),),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike, size: 70,)),
              ],
            ),
            title: Text('Món Ăn'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}