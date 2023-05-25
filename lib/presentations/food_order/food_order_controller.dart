import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FoodOrderController extends GetxController {
  var listFood = Rx<List<Food>>([]);

  @override
  Future<void> onInit() async {
    super.onInit();

    listFood.value = await getDataFood();
    listFood.refresh();
  }

  Future<List<Food>> getDataFood() async {
    var list = <Food>[];
    await FirebaseFirestore.instance
        .collection('coffee')
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

    // FirebaseFirestore.instance
    //     .collection('coffee')
    //     .doc('caphe-sua-da')
    //     .get()
    //     .then((DocumentSnapshot documentSnapshot) {
    //   documentSnapshot.data();
    //   if (documentSnapshot.exists) {
    //     print('Document data: ${documentSnapshot.data()}');
    //   } else {
    //     print('Document does not exist on the database');
    //   }
    // });
  }
}
