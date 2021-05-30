import 'package:first_project/core/store.dart';
import 'package:first_project/models/cart.dart';
import 'package:first_project/pages/login.dart';
import 'package:first_project/utilities/routs.dart';
import 'package:first_project/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myrouts.homerout,
      routes: {
        "/": (context) => LoginPage(),
        Myrouts.homerout: (context) => Homepage(),
        Myrouts.loginrout: (context) => LoginPage(),
        Myrouts.cartrout: (context) => CartPage(),
      },
    );
  }
}
