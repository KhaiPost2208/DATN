import 'package:appdatn/entity/Food.dart';
import 'package:get/get.dart';

class FoodListController extends GetxController {
  var listFood = Rx<List<Food>>([]);

  @override
  void onInit() {
    super.onInit();
    getDataFoods();
  }

  // category
  void getDataFoods() {
    var list = <Food>[];
    list.add(
      Food(
          name: "FREEZE",
          price: 45000,
          priceFormat: "45.000 VNĐ",
          desc:
              "Sảng khoái với thức uống đá xay phong cách Việt. Freeze là thức uống đá xay mát lạnh được pha chế từ những nguyên liệu thuần túy của Việt Nam.",
          thumb:
              "https://www.highlandscoffee.com.vn/vnt_upload/product/04_2023/FREEZE_TRA_XANH_5.1.png"),
    );

    list.add(
      Food(
          name: "TRÀ TUYẾT PHÚC BỒN TỬ",
          price: 59000,
          priceFormat: "59,000 VNĐ",
          desc:
              "Trà tuyết cực mát lạnh với lớp đá tuyết độc đáo cùng trái cây tươi thơm ngon và thạch giòn dai! Thử ngay",
          thumb:
              "https://www.highlandscoffee.com.vn/vnt_upload/product/05_2023/Granita-Avatarpsd4.png"),
    );

    list.add(
      Food(
          name: "FREEZE SÔ-CÔ-LA",
          price: 55000,
          priceFormat: "55,000 VNĐ",
          desc:
              "Thiên đường đá xay sô cô la! Từ những thanh sô cô la Việt Nam chất lượng được đem xay với đá cho đến khi mềm mịn, sau đó thêm vào thạch sô cô la dai giòn, ở trên được phủ một lớp kem whip beo béo và sốt sô cô la ngọt ngào. Tạo thành Freeze Sô-cô-la ngon mê mẩn chinh phục bất kì ai",
          thumb:
              "https://www.highlandscoffee.com.vn/vnt_upload/product/04_2023/New_product/HLC_New_logo_5.1_Products__FREEZE_CHOCO.jpg"),
    );

    list.add(
      Food(
          name: "TRÀ SEN VÀNG",
          price: 45000,
          priceFormat: "45,000 VNĐ",
          desc:
              "Thức uống chinh phục những thực khách khó tính! Sự kết hợp độc đáo giữa trà Ô long, hạt sen thơm bùi và củ năng giòn tan. Thêm vào chút sữa sẽ để vị thêm ngọt ngào",
          thumb:
              "https://www.highlandscoffee.com.vn/vnt_upload/product/04_2023/New_product/HLC_New_logo_5.1_Products__TRA_SEN_VANG_CU_NANG.jpg"),
    );

    listFood.value = list;
    listFood.refresh();
  }
}
