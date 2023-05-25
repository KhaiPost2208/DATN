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
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: Obx(
        () => Column(
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
      ),
    );
  }
}
