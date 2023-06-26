import 'package:appdatn/entity/category_type.dart';
import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CartFoodOrderController extends GetxController {
  var listFood = Rx<List<Food>>([]);

  var listCategory = Rx<List<CategoryType>>([]);

  var indexSelect = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    listCategory.value = [
      CategoryType.FOOD_ORDER,
    ];
    listCategory.refresh();
    getDataFromCategory();
  }

  String getIdCategoryCart(CategoryType categoryType) {
    if (categoryType == CategoryType.FOOD_ORDER) {
      return 'food_order';
    }
    return '';
  }

  void setCategorySelect(int index) {
    indexSelect.value = index;
    listCategory.refresh();
    getDataFromCategory();
  }

  Future<void> getDataFromCategory() async {
    var collectionId = getIdCategoryCart(listCategory.value[indexSelect.value]);
    listFood.value = await getDataFood(collectionId);
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
        var thumb = doc["thumb"];
        var quantity = doc["quantity"];
        var food = Food(
          name: name,
          quantity: quantity,
          thumb: thumb,
          price: price,
        );
        list.add(food);
      });
    });

    return list;
  }
}
