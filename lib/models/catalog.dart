class CatalogModel {
  static List<Item> item;

  Item getbyid(int id) =>
      item.firstWhere((element) => element.id == id, orElse: null);

  Item getbyposition(int pos) => item[pos];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final String color;
  final String image;
  final num price;

  Item({this.id, this.name, this.desc, this.color, this.image, this.price});
  factory Item.frommap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        color: map["color"],
        image: map["image"],
        price: map["price"]);
  }
  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
