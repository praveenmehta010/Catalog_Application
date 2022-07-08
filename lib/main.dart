import 'package:catalog_application/pages/cart_page.dart';
import 'package:catalog_application/pages/home_page.dart';
import 'package:catalog_application/pages/signup_page.dart';
import 'package:catalog_application/utils/routes.dart';
import 'package:catalog_application/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainClass());
}

class MainClass extends StatelessWidget {
  // const MainClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.dartTheme(context),
      title: "My app",
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: MyRoutes.homePageRoute,
      routes: {
        MyRoutes.homePageRoute: (context) => HomePage(),
        MyRoutes.signUpPageRoute: (context) => SignUp(),
        MyRoutes.cartPageRoute: (context) => CartPage(),
      },
    );
  }
}
