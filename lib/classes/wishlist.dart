class Wishlist {
  int? wishlistId;
  int? customerId;
  int? productId;

  Wishlist(
    this.wishlistId,
    this.customerId,
    this.productId,
  );

  Map<String, dynamic> toJson() => {
        "wishlistId": wishlistId,
        "customerId": customerId,
        "productId": productId,
      };

  factory Wishlist.fromJson(Map<String, dynamic> json) {
    return Wishlist(
      json["wishlistId"],
      json["customerId"],
      json["productId"],
    );
  }

}