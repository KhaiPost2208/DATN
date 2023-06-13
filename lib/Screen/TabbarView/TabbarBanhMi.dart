import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

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
            Text(
              'Bánh Mì',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ZoomTapAnimation(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return FractionallySizedBox(
                          heightFactor: 0.9,
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/banhmi.png',
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                  ),
                                )),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: menuBanhMi('Bánh Mì Đặt Biệt', Colors.black87, 30000)),
            SizedBox(height: 20),
            menuBanhMi('Bánh Mì Xíu Mại', Colors.black87, 30000),
            SizedBox(height: 20),
            menuBanhMi('Bánh Mì Gà', Colors.black87, 30000),
            SizedBox(height: 20),
            menuBanhMi('Bánh Mì Thịt Nguội', Colors.black87, 30000),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget menuBanhMi(String Click, Color txtcolor, int Price) {
  return Container(
    child: Row(
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
            Text(
              '$Click',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 20),
            Text('Giá: $Price')
          ],
        ),
      ],
    ),
  );
}
