class Food {
  String name;
  String image;
  String thumb;
  String desc;
  String note;
  int price;
  String priceFormat;
  Food(
      {required this.name,
      required this.desc,
      required this.price,
      this.priceFormat = "",
      this.image = "",
      this.thumb = "",
      this.note = ""});
}
