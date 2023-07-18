import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FoodPaymentController extends GetxController {
  var listFood = Rx<List<Food>>([]);
  var tableName = '';
  var totalPayment = 0.obs;

  var heightScreen = Get.height;
  var isLoading = false.obs;
  var isShowNoPayment = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    tableName = Get.arguments['TableName'];
    listFood.value = await getDataFood();
    listFood.refresh();

    listFood.value.forEach((element) {
      totalPayment += ((element.price ?? 0) * (element.quantity ?? 0));
    });

    if (listFood.value.isEmpty) {
      isShowNoPayment.value = true;
    }
  }

  Future<List<Food>> getDataFood() async {
    var list = <Food>[];

    String dateFormat = DateFormat('dd-MM-yyyy').format(DateTime.now());
    await FirebaseFirestore.instance
        .collection('food_order')
        .doc(dateFormat)
        .collection(tableName)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        var foodId = doc["food_id"];
        var name = doc["name"];
        var price = doc["price"];
        var quantity = doc['quantity'];
        var food =
            Food(foodId: foodId, name: name, price: price, quantity: quantity);
        list.add(food);
      });
    });

    return list;
  }

  void confirmPayment() {
    Get.dialog(
      AlertDialog(
        content: const Text('Thanh toán hoá đơn?'),
        actions: [
          ZoomTapAnimation(
            child: TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          ZoomTapAnimation(
            child: TextButton(
              child: const Text("OK"),
              onPressed: () {
                Get.back();
                paymentOrder();
              },
            ),
          ),
        ],
      ),
    );
  }

  void paymentOrder() async {
    isLoading.value = true;
    var count = 0;
    String dateFormat = DateFormat('dd-MM-yyyy').format(DateTime.now());
    listFood.value.forEach((element) async {
      await FirebaseFirestore.instance
          .collection('food_order')
          .doc(dateFormat)
          .collection(tableName)
          .doc(element.foodId)
          .delete()
          .then((value) async {
        count++;
        if (count >= listFood.value.length) {
          isLoading.value = false;
          Get.back(result: totalPayment.value);
        }
      }).catchError((error) {});
    });
  }
}
