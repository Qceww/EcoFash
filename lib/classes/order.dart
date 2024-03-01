class Order {
  int orderId;
  String recipientName;
  String recipientAddress;
  dynamic createdDate;
  String status;

  Order(
      {required this.orderId,
      required this.recipientName,
      required this.recipientAddress,
      required this.createdDate,
      required this.status});
}
