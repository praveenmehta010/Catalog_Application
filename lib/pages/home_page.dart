import 'dart:convert';
import 'package:catalog_application/modles/item_details.dart';
import 'package:catalog_application/modles/products_details.dart';
import 'package:catalog_application/modles/show_product_details.dart';
import 'package:catalog_application/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final dummydata = List.generate(10, (index) =>  ProductDetails.productDetailsList[0]);

  @override
  void initState() {
    super.initState();
    externalDataLoad();
  }

  externalDataLoad() async {
    await Future.delayed(Duration(seconds: 2));
    final jsonProductEncodedData =
        await rootBundle.loadString("assets/files/catalog.json");
    final jsonProductDecodedData = jsonDecode(jsonProductEncodedData);
    var jsonProductsData = jsonProductDecodedData["products"];

    ProductDetails.productDetailsList = List.from(jsonProductsData)
        .map<ItemDetails>((item) => ItemDetails.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageHeader(),
                if (ProductDetails.productDetailsList != null &&
                    ProductDetails.productDetailsList.isNotEmpty)
                  ShowProductsDetails().expand()
                else
                  CircularProgressIndicator().centered().expand()
              ],
            ),
          ),
        ));
  }
}

class HomePageHeader extends StatelessWidget {
  // const HomePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog Application".text.bold.xl4.color(MyTheme.indigoColor).make(),
        "treanding Products".text.xl2.make(),
      ],
    );
  }
}
