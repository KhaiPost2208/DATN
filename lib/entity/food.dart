class Food {
  String? name;
  int? price;
  String? priceFormat;
  String? thumb;
  String? desc;
  String? note;
  int? quantity;

  Food({
    this.name,
    this.price,
    this.desc,
    this.priceFormat = "",
    this.thumb = "",
    this.note = "",
    this.quantity,
  });

  Food.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    priceFormat = json['priceFormat'];
    thumb = json['thumb'];
    note = json['note'];
    quantity =json['quantity'];
  }
}
