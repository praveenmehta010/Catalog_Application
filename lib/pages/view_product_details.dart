import 'package:catalog_application/modles/item_details.dart';
import 'package:catalog_application/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class viewDetailsPage extends StatelessWidget {
  final ItemDetails viewDetails;
  const viewDetailsPage({Key? key, required this.viewDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: MyTheme.creamColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${viewDetails.price}"
                .text
                .color(Color.fromARGB(255, 220, 0, 0))
                .xl4
                .make(),
            ElevatedButton(
                onPressed: () {},
                child: "Add To Cart".text.xl.make(),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.drakBluies),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                )).wh(150, 50)
          ],
        ).p4(),
      ),
      // backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(viewDetails.id.toString()),
              child: Image.network(viewDetails.image),
            ).p12().h32(context),
            Expanded(
                child: VxArc(
                    height: 30,
                    edge: VxEdge.TOP,
                    arcType: VxArcType.CONVEY,
                    child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(children: [
                        viewDetails.name.text.bold.xl6.make(),
                        viewDetails.desc.text.xl2.make(),
                      ]).py64(),
                    )))
          ],
        ),
      ),
    );
  }
}
