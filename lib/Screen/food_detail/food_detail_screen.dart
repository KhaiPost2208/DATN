import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'food_detail_controller.dart';

class FoodDetailScreen extends StatelessWidget {
  final controller = Get.put(FoodDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gọi Món"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_rounded, size: 34,),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Obx(
          () => _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: ImageNetwork(
                image: controller.food.value?.thumb ?? "",
                imageCache: CachedNetworkImageProvider(
                    controller.food.value?.thumb ?? ""),
                height: 200,
                width: double.infinity,
                fitAndroidIos: BoxFit.contain,
                onLoading: const CircularProgressIndicator(
                  color: Colors.indigoAccent,
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.food.value?.name ?? "Detail",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown),
                      ),
                      Text(
                        controller.food.value?.priceFormat ?? "Detail",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown),
                      ),
                      // Text(controller.food.value?.desc ?? "Khai"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(controller.food.value?.desc ?? "Khai"),
                ],
              ),
            ),
          )),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuantity(),
                InkWell(
                  onTap: () {
                    controller.addFoodToFirebase();
                  },
                  child: _buildPrice(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantity() {
    return Container(
      height: 80,
      color: Colors.white,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              controller.quantityReduce();
            },
            child: Text('-',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                )),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Text(controller.quantity.value.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          TextButton(
            onPressed: () {
              controller.quantityIncrease();
            },
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPrice() {
    return Container(
      height: 50,
      width: 150,
      // width: double.infinity,
      //color: Colors.red,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.red[900],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'THÊM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            controller.price.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'VNĐ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
