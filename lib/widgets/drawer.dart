import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final url =
      "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Pranav Masekar"),
              accountEmail: Text("pranavmasekar4@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            )),
        ListTile(
          leading: Icon(CupertinoIcons.home),
          title: Text(
            "Home",
            textScaleFactor: 1.5,
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.profile_circled),
          title: Text(
            "Profile",
            textScaleFactor: 1.5,
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.mail),
          title: Text(
            "E-Mail",
            textScaleFactor: 1.5,
          ),
        ),
      ],
    ));
  }
}
