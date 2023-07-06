import 'package:appdatn/Screen/food_detail/food_detail_screen.dart';
import 'package:appdatn/Screen/food_table/food_table_screen.dart';
import 'package:appdatn/entity/category_type.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../food_cart/food_cart_screen.dart';
import 'food_order_controller.dart';


class FoodOrderScreen extends StatelessWidget {
  final controller = Get.put(FoodOrderController());

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {
        // Get.bottomSheet(FoodTableScreen()); // Tắt chế độ BottonSheet
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 34,
              ),
              _buildSearchBar(),
              Obx(
                () => _buildCategory(),
              ),
              Expanded(
                child: Obx(
                  () => _buildBody(),
                ),
              ),
              _addCart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Bạn đang muốn dùng gi?',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return Container(
      padding: EdgeInsets.only(top: 10,left: 8, right: 8),
      height: 120,
      color: Colors.white,
      alignment: Alignment.center,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listCategory.value.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.setCategorySelect(index);
            },
            child:
                _buildCategoryItem(controller.listCategory.value[index], index),
          );
        },
      ),
    );
  }

  Widget _buildCategoryItem(CategoryType categoryType, int index) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            controller.getImageCategory(categoryType),
            width: 100,
            height: 50,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            controller.getTitleCategory(categoryType),
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 120,
            height: 5,
            color: index == controller.indexSelect.value
                ? Colors.red
                : Colors.transparent,
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: Text( 'Món ăn',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Container(
              alignment: AlignmentDirectional.center,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.listFood.value.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        var food = controller.listFood.value[index];
                        Get.to(
                          () => FoodDetailScreen(),
                          arguments: food,
                        );
                        // Get.bottomSheet(BottonSeet());
                      },
                      child: Container(
                        child: _buildItemAtIndex(index),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),

      ],
    );
  }

  Widget _buildItemAtIndex(int index) {
    var food = controller.listFood.value[index];
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 100,
        child: Row(
          children: [
            ImageNetwork(
              image: food.thumb ?? "",
              imageCache: CachedNetworkImageProvider(food.thumb ?? ""),
              height: 90,
              width: 90,
              fitAndroidIos: BoxFit.cover,
              onLoading: const CircularProgressIndicator(
                color: Colors.indigoAccent,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name ?? "",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        food.desc ?? "",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                food.priceFormat ?? "",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _addCart() {
    return Container(
      color: Colors.red[900],
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Món đã chọn',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            ZoomTapAnimation(
              onTap: ()  {
                Get.to(
                      () => CartFood(),
                );
              },
                child: Icon(CupertinoIcons.cart_fill, color: Colors.white, size: 38,)),
          ],
        ),
      ),
    );
  }
}
