import 'package:appdatn/entity/food.dart';
import 'package:appdatn/entity/food_kitchen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FoodKitchenController extends GetxController {
  var listTable = [
    'Bàn 1',
    'Bàn 2',
    'Bàn 3',
    'Bàn 4',
    'Bàn 5',
    'Bàn 6',
    'Bàn 7',
    'Bàn 8',
    'Bàn 9',
  ];

  var listFoodKitchen = Rx<List<FoodKitchen>>([]);

  var heightScreen = Get.height;
  var isLoading = false.obs;
  var isShowNoData = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getData();
  }

  Future<void> getData() async {
    listFoodKitchen.value = [];

    isLoading.value = true;
    for (var i = 0; i < listTable.length; i++) {
      var foodKitchen = await getDataFoodKitchen(listTable[i]);

      if (foodKitchen.listFood?.isNotEmpty == true) {
        listFoodKitchen.value.add(foodKitchen);
        listFoodKitchen.refresh();
      }

      if (i == listTable.length - 1) {
        isLoading.value = false;
        if (listFoodKitchen.value.isEmpty) {
          isShowNoData.value = true;
        }
      }
    }
  }

  // void getData() {
  //   listFoodKitchen.value = [];
  //
  //   listTable.forEach((tableName) async {
  //     isLoading.value = true;
  //     var foodKitchen = await getDataFoodKitchen(tableName);
  //     isLoading.value = false;
  //     if (foodKitchen.listFood?.isNotEmpty == true) {
  //       listFoodKitchen.value.add(foodKitchen);
  //       listFoodKitchen.refresh();
  //     }
  //   });
  //
  //   if (listFoodKitchen.value.isNotEmpty) {
  //     isShowNoData.value = true;
  //   }
  // }

  Future<FoodKitchen> getDataFoodKitchen(String tableName) async {
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

    return FoodKitchen(tableName: tableName, listFood: list);
  }
}