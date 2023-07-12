import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'food_table_controller.dart';

class FoodTableScreen extends StatelessWidget {
  final controller = Get.put(FoodTableController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _TableNumber("Bàn 1", Colors.black),
              _TableNumber("Bàn 2", Colors.black),
              _TableNumber("Bàn 3", Colors.black),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _TableNumber("Bàn 4", Colors.black),
              _TableNumber("Bàn 5", Colors.black),
              _TableNumber("Bàn 6", Colors.black),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _TableNumber("Bàn 7", Colors.black),
              _TableNumber("Bàn 8", Colors.black),
              _TableNumber("Bàn 9", Colors.black),
            ],
          ),
        ],
      ),
    );
  }

  Widget _TableNumber(String tableName, Color text) {
    return ZoomTapAnimation(
      onTap: () {
        Get.back(result: tableName);
      },
      child: Container(
        width: 100,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 4,
              offset: Offset(5, 8),
            )
          ]
        ),
        child: Center(
            child: Text(
          tableName,
          style: TextStyle(fontSize: 20, color: text),
        )),
      ),
    );
  }
}
