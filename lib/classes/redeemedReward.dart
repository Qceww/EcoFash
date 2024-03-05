class RedeemedReward {
  int? redeemId;
  int? customerId;
  int? rewardId;
  int? rewardQuantity;

  RedeemedReward(
    this.redeemId,
    this.customerId,
    this.rewardId,
    this.rewardQuantity,
  );

  Map<String, dynamic> toJson() => {
        "redeemId": redeemId,
        "customerId": customerId,
        "rewardId": rewardId,
        "rewardQuantity": rewardQuantity,
      };

  factory RedeemedReward.fromJson(Map<String, dynamic> json) {
    return RedeemedReward(
      json["redeemId"],
      json["customerId"],
      json["rewardId"],
      json["rewardQuantity"],
    );
  }
}
