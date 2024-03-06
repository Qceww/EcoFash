// ignore: file_names
class OrderItem {
  int orderId;
  int productId;
  int orderQuantity;

  OrderItem(this.orderId, this.productId, this.orderQuantity);

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "productId": productId,
        "orderQuantity": orderQuantity,
      };

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      json["orderId"],
      json["productId"],
      json["orderQuantity"],
    );
  }
}
