import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  var food = Rx<Food?>(null);

  var quantity = 1.obs;
  var price = 0.obs;

  @override
  void onInit() {
    super.onInit();

    food.value = getDataFood();

    price.value = (food.value?.price ?? 0) * quantity.value;
  }

  Food getDataFood() {
    var data = Get.arguments;
    return Food(
      name: data.name,
      price: data.price,
      priceFormat: data.priceFormat,
      thumb: data.thumb,
      desc: data.desc,
    );
  }

  void quantityIncrease() {
    quantity.value++;
    price.value = (food.value?.price ?? 0) * quantity.value;
  }

  void quantityReduce() {
    if (quantity.value > 1) {
      quantity.value--;
      price.value = (food.value?.price ?? 0) * quantity.value;
    }
  }

  void addFoodToFirebase() async {
    CollectionReference foodOrder =
        await FirebaseFirestore.instance.collection('food_order');

    var docId = '${food.value?.name}_${DateTime.now().toString()}';
    foodOrder
        .doc(docId)
        .set(
          {
            'thub': food.value?.thumb,
            'name': food.value?.name ?? '',
            'quantity': quantity.value,
            'price': price.value,
          },
        )
        .then((value) => print("Food Added"))
        .catchError((error) => print("Failed to add food: $error"));
  }
}
