import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'MenuPho.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

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
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)
                              )
                          ),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return FractionallySizedBox(
                              heightFactor: 0.9,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  // width: 170,
                                  // height: 200,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text('Bánh Mì', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhmi.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Mì Đặc Biệt', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 30.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhmi.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Mì Xíu Mại', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 20.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhmi.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Mì Gà', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 30.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhmi.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Mì Thịt Nguội', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 30.000')
                                              ],
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                // child: Container(
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment.start,
                                //     children: [
                                //       Container(
                                //         child: Image.asset(
                                //           'assets/banhmi.png',
                                //           height: 70,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ),
                            );
                          });
                    },
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
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)
                              )
                          ),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return FractionallySizedBox(
                              heightFactor: 0.9,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  // width: 170,
                                  // height: 200,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text('Phở', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/pho.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Phở Đặc Biệt', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 60.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/pho.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Phở Tái', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 35.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/pho.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Tái, Nạm', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 45.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/pho.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Phở Tái, Gầu', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 40.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/pho.png',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Phở Bò Viên', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 40.000')
                                              ],
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                // child: Container(
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment.start,
                                //     children: [
                                //       Container(
                                //         child: Image.asset(
                                //           'assets/banhmi.png',
                                //           height: 70,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ),
                            );
                          });
                    },
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)
                              )
                          ),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return FractionallySizedBox(
                              heightFactor: 0.9,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  // width: 170,
                                  // height: 200,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text('Bánh Canh', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhcanhcua.jpg',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Canh Cua Đặc Biệt', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 30.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhcanhcua.jpg',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Canh Càng Cua', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 20.000')
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/banhcanhcua.jpg',
                                                height: 60,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Bánh Canh Càng Cua', style: TextStyle(fontSize: 18),),
                                                SizedBox(width: 20),
                                                Text('Giá: 30.000')
                                              ],
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                // child: Container(
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment.start,
                                //     children: [
                                //       Container(
                                //         child: Image.asset(
                                //           'assets/banhmi.png',
                                //           height: 70,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ),
                            );
                          });
                    },
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
}
