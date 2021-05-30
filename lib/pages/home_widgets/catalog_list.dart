import 'package:first_project/models/catalog.dart';
import 'package:first_project/pages/home_detail_page.dart';
import 'package:first_project/pages/home_widgets/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.item.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.item[index];
          return InkWell(
            child: CatalogItem(catalog: catalog),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
          );
        });
  }
}
