class Order {
  int? orderId;
  int? customerId;
  int? addressId;
  dynamic? estimatedDate;
  String? orderStatus;
  dynamic? createdDate;

  Order(this.orderId, this.customerId, this.addressId, this.estimatedDate,
      this.orderStatus, this.createdDate);

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "customerId": customerId,
        "addressId": addressId,
        "estimatedDate": estimatedDate,
        "orderStatus": orderStatus,
        "createdDate": createdDate,
      };

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      json["orderId"],
      json["customerId"],
      json["addressId"],
      json["estimatedDate"],
      json["orderStatus"],
      json["createdDate"],
    );
  }
}
