import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../entity/category_type.dart';
import '../food_order/food_order_controller.dart';

class CategoryWidget extends StatelessWidget {

  final controller = Get.put(FoodOrderController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/banhmi.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bánh Mì',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/pho.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Phở', style: TextStyle(fontSize: 18)),
                ],
              ),
            ), //Phở
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/banhcanhcua.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Bánh Canh', style: TextStyle(fontSize: 18)),
                ],
              ),
            ), //Bánh canh
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'assets/banhxeo.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Bánh Xèo', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'assets/bunbo.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Bún Bò', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'assets/hutieu.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Hủ Tiếu', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'assets/bunrieu.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Bún Riêu', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'assets/miquang.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Mì Quảng', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
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
}
