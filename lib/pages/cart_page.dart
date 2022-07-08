import 'package:catalog_application/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: Center(child: "Cart".text.xl5.color(MyTheme.drakBluies).make()),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
