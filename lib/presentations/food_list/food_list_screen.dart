import 'package:appdatn/presentations/food_detail/food_detail_screen.dart';
import 'package:appdatn/presentations/food_list/food_list_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';

class FoodListScreen extends StatelessWidget {
  final controller = Get.put(FoodListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Food"),
      ),
      body: Container(
        color: Colors.white,
        child: _buildBody(),
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
                      // Get.to(
                      //   () => FoodDetailScreen(),
                      //   arguments: {"FOOD": food, "NAME": food.name},
                      // );

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
}
