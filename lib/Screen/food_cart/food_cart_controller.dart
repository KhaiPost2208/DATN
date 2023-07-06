import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartFoodOrderController extends GetxController {
  var listFoodCart = Rx<List<Food>>([]);

  var heightScreen = Get.height;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    listFoodCart.value = Get.arguments;
    listFoodCart.refresh();
  }

  void addFoodToFirebase() async {
    CollectionReference foodOrder =
        await FirebaseFirestore.instance.collection('food_order');

    var count = 0;
    listFoodCart.value.forEach((food) {
      isLoading.value = true;
      var docId = '${food.name}_${DateTime.now().toString()}';
      foodOrder.doc(docId).set(
        {
          'thub': food.thumb,
          'name': food.name ?? '',
          'quantity': food.quantity,
          'price': food.price,
        },
      ).then((value) async {
        count++;
        if (count >= listFoodCart.value.length) {
          isLoading.value = false;

          await Get.dialog(
            AlertDialog(
              //title: const Text('Dialog'),
              content: const Text('Đặt hàng thành công'),
              actions: [
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Get.back(result: true);
                  },
                ),
              ],
            ),
          );

          Get.back(result: true);
        }
      }).catchError((error) {
        isLoading.value = false;
      });
    });
  }
}
