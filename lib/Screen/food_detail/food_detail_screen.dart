import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';

import 'food_detail_controller.dart';

class FoodDetailScreen extends StatelessWidget {
  final controller = Get.put(FoodDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
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
    return Stack(
      children: [
        Column(
          children: [
            ImageNetwork(
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
            Text(controller.food.value?.name ?? "Detail"),
            Text(controller.food.value?.priceFormat ?? "Detail"),
            Text(controller.food.value?.desc ?? "Detail"),
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: _buildQuantity(),
              ),
              _buildPrice(),
            ],
          ),
        ),
      ],
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
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Container(
            width: 50,
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
      width: 200,
      //color: Colors.red,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.red,
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
            width: 10,
          ),
          Text(
            controller.price.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'vnd',
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
