import 'dart:math';
import 'package:flutter/material.dart';


class TabbarPho extends StatefulWidget {
  const TabbarPho({super.key});

  @override
  State<TabbarPho> createState() => _TabbarPhoState();
}

class _TabbarPhoState extends State<TabbarPho> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          // width: 170,
          // height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text('Phở', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pho.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phở Đặc Biệt', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 60.000')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pho.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phở Tái', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 35.000')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pho.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bánh Tái, Nạm', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 45.000')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pho.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phở Tái, Gầu', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 40.000')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/pho.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phở Bò Viên', style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20),
                        Text('Giá: 40.000')
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
