import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';

import '../food_detail/food_detail_screen.dart';
import 'food_order_controller.dart';

class FoodOrderScreen extends StatelessWidget {
  final controller = Get.put(FoodOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Danh Sách",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildCategory(),
            Expanded(
              child: Obx(
                () => _buildBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // caphe
              InkWell(
                onTap: () {
                  controller.getDataCoffee();
                },
                child: _buildItemCategory(
                  'assets/menu_coffee.png',
                  "Cà Phê",
                ),
              ),

              // menu_cloud_fee
              InkWell(
                onTap: () {
                  controller.getDataCloudFee();
                },
                child: _buildItemCategory(
                  'assets/menu_cloud_fee.png',
                  "Cloud Fee",
                ),
              ),

              // menu_cloud_tea
              _buildItemCategory('assets/menu_cloud_tea.png', "Cloud Tea"),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Center(
          child: Container(
            alignment: AlignmentDirectional.center,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.listFood.value.length,
              itemBuilder: (context, index) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      var food = controller.listFood.value[index];

                      Get.to(
                        () => FoodDetailScreen(),
                        arguments: food,
                      );
                    },
                    child: Container(
                      child: _buildItemAtIndex(index),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItemAtIndex(int index) {
    var food = controller.listFood.value[index];
    return Container(
      height: 100,
      child: Row(
        children: [
          ImageNetwork(
            image: food.thumb ?? "",
            imageCache: CachedNetworkImageProvider(food.thumb ?? ""),
            height: 80,
            width: 80,
            fitAndroidIos: BoxFit.cover,
            onLoading: const CircularProgressIndicator(
              color: Colors.indigoAccent,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name ?? "",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text(
                      food.desc ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              food.priceFormat ?? "",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemCategory(String imageName, String title) {
    return Column(
      children: [
        Image.asset(
          imageName,
          height: 60,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
