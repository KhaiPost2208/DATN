import 'package:appdatn/entity/food.dart';
import 'package:appdatn/entity/food_kitchen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'food_kitchen_controller.dart';

class FoodKitchenScreen extends StatelessWidget {
  final controller = Get.put(FoodKitchenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bếp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              controller.getData();
            },
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Obx(
              () => _buildListFoodKitchen(),
            ),
            Obx(
              () => Container(
                alignment: Alignment.center,
                child: Visibility(
                    visible: controller.isShowNoData.value,
                    child: Text(
                      'Chưa có món',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )),
              ),
            ),
            Obx(
              () => Visibility(
                visible: controller.isLoading.value,
                child: Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
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

  Widget _buildListFoodKitchen() {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: controller.listFoodKitchen.value.length,
        itemBuilder: (context, index) {
          return _buildItemFoodKitchen(controller.listFoodKitchen.value[index]);
        },
      ),
    );
  }

  Widget _buildItemFoodKitchen(FoodKitchen foodKitchen) {
    var heightItem = 40.0;

    var heightView = ((foodKitchen.listFood?.length ?? 0) + 1) * heightItem;
    return Container(
      height: heightView,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: heightItem,
            child: Text(
              foodKitchen.tableName,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
              height: (foodKitchen.listFood?.length ?? 0) * heightItem,
              child: _buildListFood(foodKitchen.listFood ?? [])),
        ],
      ),
    );
  }

  Widget _buildListFood(List<Food> listFood) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        //separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: controller.listFoodKitchen.value.length,
        itemBuilder: (context, index) {
          return _buildItemFood(listFood[index]);
        },
      ),
    );
  }

  Widget _buildItemFood(Food food) {
    var totalPrice = (food.price ?? 0) * (food.quantity ?? 0);

    var currencyFormatter = NumberFormat('#,###', 'ID');
    var totalFormat = currencyFormatter.format(totalPrice);

    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Text(
            '(${food.quantity.toString()}x)',
            style: TextStyle(
              fontSize: 16,
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
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          // Text(
          //   '${totalFormat} vnd',
          //   style: TextStyle(
          //     fontSize: 14,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
    );
  }
}
