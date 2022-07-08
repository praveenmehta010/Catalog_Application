class ItemDetails {
  
  final num id;
  final num price;
  final String name;
  final String desc;
  final String color;
  final String image;

  ItemDetails(
    {
      required this.id, 
      required this.price, 
      required this.name, 
      required this.desc, 
      required this.color, 
      required this.image
    }
  );

 factory ItemDetails.fromMap( Map<String, dynamic> map){
  return ItemDetails(
    id: map["id"], 
    price: map["price"],
    name: map["name"],
    desc: map["desc"],
    color: map["color"],
    image: map["image"],
  );
 }

  toMap() => {
    "id" : id,
    "price" : price,
    "name" : name,
    "desc" : desc,
    "color" : color,
    "image" : image,
  }; 

}


