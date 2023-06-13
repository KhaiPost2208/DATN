import 'package:appdatn/entity/category_type.dart';
import 'package:appdatn/entity/food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FoodOrderController extends GetxController {
  var listFood = Rx<List<Food>>([]);

  var listCategory = Rx<List<CategoryType>>([]);

  var indexSelect = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    listCategory.value = [
      CategoryType.BANH_MI,
      CategoryType.PHO,
      CategoryType.BANH_CANH,
      CategoryType.BANH_XEO,
      CategoryType.BUN_BO,
      CategoryType.HU_TIEU,
      CategoryType.BUN_RIEU,
      CategoryType.MI_QUANG
    ];
    listCategory.refresh();

    getDataFromCategory();

    //getDataCoffee();
  }

  Future<void> getDataCoffee() async {
    listFood.value = await getDataFood('banh_mi');
    listFood.refresh();
  }

  Future<void> getDataCloudFee() async {
    listFood.value = await getDataFood('pho');
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
        var priceFormat = doc["price_formart"];
        //var desc = doc["desc"];
        var thumb = doc["thumb"];
        var food = Food(
          name: name,
          //desc: desc,
          thumb: thumb,
          price: price,
          priceFormat: priceFormat,
        );
        list.add(food);
      });
    });

    return list;
  }

  String getTitleCategory(CategoryType categoryType) {
    if (categoryType == CategoryType.BANH_MI) {
      return 'Bánh Mì';
    } else if (categoryType == CategoryType.PHO) {
      return 'Phở';
    } else if (categoryType == CategoryType.BANH_CANH) {
      return 'Bánh Canh';
    } else if (categoryType == CategoryType.BANH_XEO) {
      return 'Bánh Xèo';
    } else if (categoryType == CategoryType.BUN_BO) {
      return 'Bún Bò';
    } else if (categoryType == CategoryType.HU_TIEU) {
      return 'Hủ Tiếu';
    } else if (categoryType == CategoryType.BUN_RIEU) {
      return 'Bún Riêu';
    } else if (categoryType == CategoryType.MI_QUANG) {
      return 'Mì Quảng';
    }

    return '';
  }

  String getImageCategory(CategoryType categoryType) {
    if (categoryType == CategoryType.BANH_MI) {
      return 'assets/banhmi.png';
    } else if (categoryType == CategoryType.PHO) {
      return 'assets/pho.png';
    } else if (categoryType == CategoryType.BANH_CANH) {
      return 'assets/miquang.png';
    } else if (categoryType == CategoryType.BANH_XEO) {
      return 'assets/banhxeo.png';
    } else if (categoryType == CategoryType.BUN_BO) {
      return 'assets/bunbo.png';
    } else if (categoryType == CategoryType.HU_TIEU) {
      return 'assets/hutieu.png';
    } else if (categoryType == CategoryType.BUN_RIEU) {
      return 'assets/bunrieu.png';
    } else if (categoryType == CategoryType.MI_QUANG) {
      return 'assets/miquang.png';
    }

    return '';
  }

  String getIdCategory(CategoryType categoryType) {
    if (categoryType == CategoryType.BANH_MI) {
      return 'banh_mi';
    } else if (categoryType == CategoryType.PHO) {
      return 'pho';
    } else if (categoryType == CategoryType.BANH_CANH) {
      return 'mi_quang';
    } else if (categoryType == CategoryType.BANH_XEO) {
      return 'banh_xeo';
    } else if (categoryType == CategoryType.BUN_BO) {
      return 'bun_bo';
    } else if (categoryType == CategoryType.HU_TIEU) {
      return 'hu_tieu';
    } else if (categoryType == CategoryType.BUN_RIEU) {
      return 'bun_rieu';
    } else if (categoryType == CategoryType.MI_QUANG) {
      return 'mi_quang';
    }

    return '';
  }

  void setCategorySelect(int index) {
    indexSelect.value = index;
    listCategory.refresh();
    getDataFromCategory();
  }

  Future<void> getDataFromCategory() async {
    var collectionId = getIdCategory(listCategory.value[indexSelect.value]);
    listFood.value = await getDataFood(collectionId);
    listFood.refresh();
  }
}
