import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // for (int i=0; i<5; i++)
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/pho.png',
                                    height: 200,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '------------------------------------------------------------------------------',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Phở - Tinh hoa ẩm thực hòa quyện với giá trị văn hóa, lịch sử và hương vị quê hương",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 14),
                                Text(
                                  '- Khi nói về món ăn Việt, có lẽ phở là cái tên luôn luôn được mọi người nghĩ ngay đến đầu tiên. Phở là món ăn rất phổ biến ở Việt Nam và được nhiều người khen ngợi. Tuy không phải là món ăn quý hiếm nhưng hương vị phở luôn mang lại cảm giác ngon miệng và ấm áp cho bất kỳ thực khách nào. Đây thực sự là món ăn hoàn hảo đối với khẩu vị và cảm nhận của mọi người dân Việt',
                                  style: GoogleFonts.arsenal(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                    )
                                  )
                                  ),

                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.teal, Colors.white],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/pho.png',
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Phở Việt Nam",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Tinh hoa ẩm thực hòa quyện với giá trị văn hóa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: ZoomTapAnimation(
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/banhmi.png',
                                      height: 130,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '------------------------------------------------------------------------------',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Bánh mì Việt Nam: Từ món ăn bình dân vươn ra thế giới",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 14),
                                  Text(
                                      '- Bánh mì là một món ăn Việt Nam, với lớp vỏ ngoài là một ổ bánh mì nướng có da giòn, ruột mềm, còn bên trong là phần nhân. Tùy theo văn hóa vùng miền hoặc sở thích cá nhân, người ta có thể chọn nhiều nhân bánh mì khác nhau. Tuy nhiên, loại nhân bánh truyền thống thường chứa chả lụa, thịt, cá, thực phẩm chay hoặc mứt trái cây, kèm theo một số nguyên liệu phụ khác như patê, bơ, rau, ớt và đồ chua. Bánh mì được xem như một loại thức ăn nhanh bình dân và thường được tiêu thụ trong bữa sáng hoặc bất kỳ bữa phụ nào trong ngày. Do có giá thành phù hợp nên bánh mì trở thành món ăn được rất nhiều người ưa chuộng.',
                                      style: GoogleFonts.arsenal(
                                          textStyle: TextStyle(
                                            fontSize: 20,
                                          )
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.white],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/banhmi.png',
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Bánh Mì",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Từ món ăn bình dân vươn ra thế giới',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: ZoomTapAnimation(
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/bunbo.png',
                                      height: 150,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '------------------------------------------------------------------------------',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Bún bò Huế - đặc sản dân dã làm say lòng biết bao thực khách",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 14),
                                  Text(
                                      '- Bún bò Huế được yêu thích bởi hình thức bắt mắt và hương vị đậm đà khó quên. Bởi vậy, xứ Huế thu hút du khách không chỉ ở vẻ đẹp của sông Hương, núi Ngự,... mà còn ở món bún bò đặc sản đất cố đô. Điểm tạo nên sự khác biệt của bún bò Huế chính là sợi bún to, lát thịt bò mỏng mà to bản, nước lèo có màu đỏ cam với vị cay nồng hấp dẫn. Để nấu món đặc sản đất Huế này, người đứng bếp cần thực sự tỉ mỉ từ khâu chọn nguyên liệu tới các bước chế biến.',
                                      style: GoogleFonts.arsenal(
                                          textStyle: TextStyle(
                                            fontSize: 20,
                                          )
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.white],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/bunbo.png',
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bún Bò',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Bún bò Huế - đặc sản dân dã làm say lòng biết bao thực khách',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: ZoomTapAnimation(
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/hutieu.png',
                                      height: 130,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '------------------------------------------------------------------------------',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "“Vương vấn” hủ tiếu Nam Vang Sài Gòn ngon đượm vị",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 14),
                                  Text(
                                      '- Hủ tiếu Nam Vang là món ăn khá phổ biến ở Nam Bộ. Một tô hủ tiếu Nam Vang sẽ bao gồm rất nhiều nguyên liệu và phần nước lèo thơm ngon. Món đặc sản này là sự kết tinh của 2 nền văn hóa ẩm thực Việt Nam và Campuchia. Hủ tiếu Nam Vang là một món ăn có có nguồn gốc từ Phnôm Pênh, Campuchia. Cộng đồng người Hoa ở Nam Vang (tên phiên âm Hán Việt của Phnôm Pênh) đã chế biến lại, sau đó đưa món ăn này về Việt Nam. Về sau, hủ tiếu Nam Vang được thêm nhiều loại gia vị đậm đà hơn để phù hợp với văn hóa ẩm thực của người Việt và trở thành đặc sản Sài Gòn, nổi tiếng ba miền. ',
                                      style: GoogleFonts.arsenal(
                                          textStyle: TextStyle(
                                            fontSize: 20,
                                          )
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  width: 170,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.white],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/hutieu.png',
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Hủ Tiếu",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '“Vương vấn” hủ tiếu Nam Vang Sài Gòn ngon đượm vị',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
// check
