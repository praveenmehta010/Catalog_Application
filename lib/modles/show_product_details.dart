import 'package:catalog_application/modles/item_details.dart';
import 'package:catalog_application/modles/products_details.dart';
import 'package:catalog_application/pages/view_product_details.dart';
import 'package:catalog_application/utils/routes.dart';
import 'package:catalog_application/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShowProductsDetails extends StatelessWidget {
  // const ShowProductsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
           
            Navigator.pushNamed(context, MyRoutes.cartPageRoute);
          }, backgroundColor:
            MyTheme.indigoColor,
          child: Icon(CupertinoIcons.cart)),
      body: ListView.builder(
          
          shrinkWrap: true,
          itemCount: ProductDetails.productDetailsList.length,
          itemBuilder: (context, index) {
            // return ShowListProductDeatails(productDetail: ProductDetails.productDetailsList[index],);
            // return ShowGrideProductDeatails(productDetail: ProductDetails.productDetailsList[index],);
            // final productDetails = ProductDetails.productDetailsList[index];
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => viewDetailsPage(
                            viewDetails:
                                ProductDetails.productDetailsList[index],
                          ))),
              child: ShowProductDetailsVxBox(
                  productDetails: ProductDetails.productDetailsList[index]),
            );
          }),
    );
  }
}

class ShowProductDetailsVxBox extends StatelessWidget {
  final ItemDetails productDetails;
  const ShowProductDetailsVxBox({Key? key, required this.productDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(productDetails.id.toString()),
          child: ProductImage(
            image: productDetails.image,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              productDetails.name.text.xl.bold.make(),
              productDetails.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${productDetails.price}"
                      .text
                      .color(Colors.deepPurple)
                      .xl3
                      .make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(MyTheme.drakBluies),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "buy".text.make())
                ],
              ).pOnly(right: 10)
            ],
          ),
        )
      ],
    )).color(MyTheme.creamColor).rounded.square(150).make().py16();
  }
}

class ProductImage extends StatelessWidget {
  final String image;
  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p8.rounded.color(Colors.white).make().p16().w40(context);
  }
}

// class ShowListProductDeatails extends StatelessWidget {
//   final ItemDetails productDetail;

//   const ShowListProductDeatails({super.key, required this.productDetail});
//   // const ShowProductDeatails({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Image.network(productDetail.image),
//         title: Text(productDetail.name),
//         subtitle: Text(productDetail.desc),
//         trailing: Text("\$${productDetail.price}"),
//       ),
//     );
//   }
// }

// class ShowGrideProductDeatails extends StatelessWidget {
//   final ItemDetails productDetail;

//   const ShowGrideProductDeatails({super.key, required this.productDetail});
//   // const ShowProductDeatails({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: GridTile(
//         child: Image.network(
//           productDetail.image,
//           // fit: BoxFit.fill,
//         ),
//         header: Container(
//           child: Text(
//             productDetail.name,
//             style: TextStyle(color: Colors.white),
//           ),
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(color: Colors.deepPurple),
//         ),
//         footer: Container(
//           child: Text(
//             "\$${productDetail.price.toString()}",
//             style: TextStyle(color: Colors.white),
//           ),
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(color: Colors.black),
//         ),
//       ),
//     );
//   }
// }
