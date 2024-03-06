class Address {
  int? addressId;
  int? customerId;
  String? addressName;
  String? addressDetail;

  Address(
    this.addressId,
    this.customerId,
    this.addressName,
    this.addressDetail,
  );

  Map<String, dynamic> toJson() => {
        "addressId": addressId,
        "customerId": customerId,
        "addressName": addressName,
        "addressDetail": addressDetail,
      };

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      json["addressId"],
      json["customerId"],
      json["addressName"],
      json["addressDetail"],
    );
  }
}
