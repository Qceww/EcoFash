class Reward {
  int? rewardId;
  String? rewardName;
  dynamic? rewardExpiry;
  int? rewardCost;
  int? rewardDiscount;
  String? rewardLocation;

  Reward(
    this.rewardId,
    this.rewardName,
    this.rewardExpiry,
    this.rewardCost,
    this.rewardDiscount,
    this.rewardLocation,
  );

  Map<String, dynamic> toJson() => {
        "rewardId": rewardId,
        "rewardName": rewardName,
        "expiryDate": rewardExpiry,
        "cost": rewardCost,
        "discount": rewardDiscount,
        "location": rewardLocation,
      };

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      json["rewardId"],
      json["rewardName"],
      json["expiryDate"],
      json["cost"],
      json["discount"],
      json["location"],
    );
  }
}
