import 'package:first_project/models/catalog.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'addtocart.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: Image.network(catalog.image)
              .box
              .rounded
              .p8
              .color(context.canvasColor)
              .make()
              .p16()
              .w32(context),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            Padding(padding: EdgeInsets.all(0)),
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                Addtocart(catalog: catalog)
              ],
            )
          ],
        ))
      ],
    )).color(context.cardColor).roundedLg.square(100).make().py16();
  }
}
