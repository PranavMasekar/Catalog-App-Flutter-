import 'package:first_project/models/catalog.dart';
import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  final Item item;
  const Itemwidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$" + (item.price).toString()),
      ),
    );
  }
}
