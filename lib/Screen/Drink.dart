import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


class MenuDrink extends StatelessWidget {
  const MenuDrink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/drink.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Nước Uống'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPlus extends StatelessWidget {
  const MenuPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/khan.jpg',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Khăn Lạnh'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
