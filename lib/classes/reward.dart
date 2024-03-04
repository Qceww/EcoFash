class Reward {
  int? rewardId;
  String? rewardName;
  dynamic? rewardExpiry;
  String? rewardLocation;

  Reward(
    this.rewardId,
    this.rewardName,
    this.rewardExpiry,
    this.rewardLocation,
  );

  Map<String, dynamic> toJson() => {
        "rewardId": rewardId,
        "rewardName": rewardName,
        "rewardExpiry": rewardExpiry,
        "rewardLocation": rewardLocation,
      };

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      json["rewardId"],
      json["rewardName"],
      json["rewardExpiry"],
      json["rewardLocation"],
    );
  }

}
