import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TabbarBanhMi.dart';


HomeTopTabs() {
  return DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Món Ăn', style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white,
        bottom: TabBar(
          isScrollable: true,
          indicatorWeight: 6.0,
          indicatorColor: Colors.red,
          unselectedLabelColor: Colors.black,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                CupertinoIcons.arrow_up_bin_fill,
                color: Colors.green,
              ),
              child: Text(
                'Bánh Mì',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.assessment,
                color: Colors.green,
              ),
              child: Text(
                'Phở',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.green,
              ),
              child: Text(
                'Bánh Canh',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.category,
                color: Colors.green,
              ),
              child: Text(
                'Bánh Xèo',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.monetization_on,
                color: Colors.green,
              ),
              child: Text(
                'Bún Bò',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TabBarView(
          children: <Widget>[
            TabbarBanhMi(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
      ),
    ),
  );
}