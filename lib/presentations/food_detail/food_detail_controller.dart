import 'package:appdatn/entity/food.dart';
import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  var food = Rx<Food?>(null);

  //final arguments = Get.arguments is Map<String, dynamic> ? Get.arguments : {};

  @override
  void onInit() {
    super.onInit();

    food.value = getDataFood();
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
}
