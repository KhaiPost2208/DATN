import 'dart:math';
import 'package:flutter/material.dart';


class TabbarBanhMi extends StatefulWidget {
  const TabbarBanhMi({super.key});

  @override
  State<TabbarBanhMi> createState() => _TabbarBanhMiState();
}

class _TabbarBanhMiState extends State<TabbarBanhMi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Bánh Mì', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/banhmi.png',
                    height: 60,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bánh Mì Đặc Biệt', style: TextStyle(fontSize: 18),),
                    SizedBox(width: 20),
                    Text('Giá: 30.000')
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/banhmi.png',
                    height: 60,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bánh Mì Xíu Mại', style: TextStyle(fontSize: 18),),
                    SizedBox(width: 20),
                    Text('Giá: 20.000')
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/banhmi.png',
                    height: 60,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bánh Mì Gà', style: TextStyle(fontSize: 18),),
                    SizedBox(width: 20),
                    Text('Giá: 30.000')
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/banhmi.png',
                    height: 60,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bánh Mì Thịt Nguội', style: TextStyle(fontSize: 18),),
                    SizedBox(width: 20),
                    Text('Giá: 30.000')
                  ],
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
