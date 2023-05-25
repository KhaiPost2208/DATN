import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FoodOrderController extends GetxController {
  var listFood = Rx<List<Food>>([]);

  @override
  Future<void> onInit() async {
    super.onInit();

    getDataCoffee();
  }

  Future<void> getDataCoffee() async {
    listFood.value = await getDataFood('coffee');
    listFood.refresh();
  }

  Future<void> getDataCloudFee() async {
    listFood.value = await getDataFood('cloudfee');
    listFood.refresh();
  }

  Future<List<Food>> getDataFood(String collectionId) async {
    var list = <Food>[];
    await FirebaseFirestore.instance
        .collection(collectionId)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        var name = doc["name"];
        var price = doc["price"];
        var priceFormat = doc["price_format"];
        var desc = doc["desc"];
        var thumb = doc["thumb"];
        var food = Food(
            name: name,
            desc: desc,
            thumb: thumb,
            price: price,
            priceFormat: priceFormat);
        list.add(food);
      });
    });

    return list;
  }
}
