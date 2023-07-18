import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CartFoodOrderController extends GetxController {
  var listFoodCart = Rx<List<Food>>([]);
  var tableName = '';
  var totalPayment = 0.obs;

  var heightScreen = Get.height;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    tableName = Get.arguments['TableName'];
    listFoodCart.value = Get.arguments['ListFood'];
    listFoodCart.refresh();

    listFoodCart.value.forEach((element) {
      totalPayment += ((element.price ?? 0) * (element.quantity ?? 0));
    });
  }

  void addFoodToFirebase() async {
    CollectionReference foodOrder =
        await FirebaseFirestore.instance.collection('food_order');

    var count = 0;
    listFoodCart.value.forEach((food) {
      isLoading.value = true;
      //var docId = '${food.name}_${DateTime.now().toString()}';

      String dateFormat = DateFormat('dd-MM-yyyy').format(DateTime.now());
      var docId = '${food.name}_${DateTime.now().toString()}';
      foodOrder.doc(dateFormat).collection(tableName).doc(docId).set(
        {
          'food_id': docId,
          'table_name': tableName,
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
              content: const Text('Đặt món thành công'),
              actions: [
                ZoomTapAnimation(
                  child: TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Get.back(result: true);
                    },
                  ),
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

  void confirmDelete() {
    Get.dialog(
      AlertDialog(
        content: const Text('Xoá đơn hàng?'),
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
                listFoodCart.value = [];
                Get.back();
                Get.back(result: true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
