import 'dart:math';
import 'package:flutter/material.dart';


class TabbarBanhCanh extends StatefulWidget {
  const TabbarBanhCanh({super.key});

  @override
  State<TabbarBanhCanh> createState() => _TabbarBanhCanhState();
}

class _TabbarBanhCanhState extends State<TabbarBanhCanh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          // width: 170,
          // height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text('Bánh Canh', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/banhcanhcua.jpg',
                        height: 60,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bánh Canh Cua Đặc Biệt', style: TextStyle(fontSize: 18),),
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
                        'assets/banhcanhcua.jpg',
                        height: 60,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bánh Canh Càng Cua', style: TextStyle(fontSize: 18),),
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
                        'assets/banhcanhcua.jpg',
                        height: 60,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bánh Canh Càng Cua', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 30.000')
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        // child: Container(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         child: Image.asset(
        //           'assets/banhmi.png',
        //           height: 70,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),

    );
  }
}
