import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'food_table_controller.dart';

class FoodTableScreen extends StatelessWidget {
  final controller = Get.put(FoodTableController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTable(),
              _buildTable(),
              _buildTable(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTable(),
              _buildTable(),
              _buildTable(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTable() {
    return Container(
      width: 150,
      height: 150,
      color: Colors.orange,
    );
  }
}
