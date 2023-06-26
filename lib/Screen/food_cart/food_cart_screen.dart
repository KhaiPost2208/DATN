import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'food_cart_controller.dart';

class CartFood extends StatelessWidget {
  final controller = Get.put(CartFoodOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giỏ Hàng'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.grey[300],
              child: Column(
                children: [
                  Text('Danh sách món đã thêm',
                    style: TextStyle(
                    fontSize: 16
                  ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: _buildCart(),
              ),
            )

          ],
        ),

      ),
    );
  }
  Widget _buildCart() {
    return ZoomTapAnimation(
      onTap: ()  {
        // Code đặt hàng
      },
      child: Container(
        height: 50,
        width: 250,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.red[900],
        ),
        child:  Text(
          'ĐẶT HÀNG',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }



}

