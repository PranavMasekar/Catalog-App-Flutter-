import 'package:first_project/core/store.dart';
import 'package:first_project/models/catalog.dart';
import 'package:first_project/models/files/cartmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Addtocart extends StatelessWidget {
  final Item catalog;
  Addtocart({
    // ignore: unused_element
    Key key,
    this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isincart = _cart.item.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isincart) {
            AddMutation(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child:
            isincart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
