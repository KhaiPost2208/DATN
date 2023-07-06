import 'package:appdatn/entity/food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'food_cart_controller.dart';

class FoodCartScreen extends StatelessWidget {
  final controller = Get.put(CartFoodOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giỏ Hàng'),
      ),
      body: Container(
        //decoration: BoxDecoration(color: Colors.grey[300]),
        child: Stack(
          children: [
            Obx(
              () => _buildListFood(),
            ),
            _buildCart(),
            Obx(
              () => Visibility(
                visible: controller.isLoading.value,
                child: Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListFood() {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: controller.listFoodCart.value.length,
        itemBuilder: (context, index) {
          return _buildItemFood(controller.listFoodCart.value[index]);
        },
      ),
    );
  }

  Widget _buildItemFood(Food food) {
    var totalPrice = (food.price ?? 0) * (food.quantity ?? 0);
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            '(${food.quantity.toString()}x)',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              food.name.toString(),
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            '${totalPrice.toString()} vnd',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCart() {
    return InkWell(
      onTap: () {
        controller.addFoodToFirebase();
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 20),
        child: Container(
          height: 50,
          width: 250,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.red[900],
          ),
          child: Text(
            'ĐẶT HÀNG',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
