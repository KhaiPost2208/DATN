import 'package:appdatn/entity/food.dart';

class FoodKitchen {
  String tableName;
  List<Food>? listFood;

  FoodKitchen({
    this.tableName = '',
    this.listFood,
  });
}
