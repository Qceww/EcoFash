class Product{
  int? productId;
  String? productName;
  int? productPrice;
  String? productDescription;
  int? productColorId1;
  int? productColorId2;
  int? productColorId3;
  String? picture1;
  String? picture2;
  String? picture3;
  int? productQuantity;

  Product(
    this.productId,
    this.productName,
    this.productPrice,
    this.productDescription,
    this.productColorId1,
    this.productColorId2,
    this.productColorId3,
    this.picture1,  
    this.picture2,
    this.picture3,
    this.productQuantity,
  );

   Map<String, dynamic> toJson() => {
        "productId": productId,
        "productName": productName,
        "productPrice": productPrice,
        "productDescription": productDescription,
        "productColorId1": productColorId1,
        "productColorId2": productColorId2,
        "productColorId3": productColorId3,
        "picture1": picture1,
        "picture2": picture2,
        "picture3": picture3,
        "productQuantity": productQuantity,
      };

factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json["productId"], 
      json["productName"], 
      json["productPrice"], 
      json["productDescription"],
      json["productColorId1"],
      json["productColorId2"],
      json["productColorId3"],
      json["picture1"],
      json["picture2"],
      json["picture3"],
      json["productQuantity"],
      );
  }
}