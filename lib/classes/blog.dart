class Blog {
  int? blogId;
  String? blogName;
  String? blogDescription;
  String? picture;
  String? authorName;
  String? tag1;
  String? tag2;
  String? created_at;

  Blog(
    this.blogId,
    this.blogName,
    this.blogDescription,
    this.picture,
    this.authorName,
    this.tag1,
    this.tag2,
    this.created_at
  );

  Map<String, dynamic> toJson() => {
        "blogId": blogId,
        "blogName": blogName,
        "blogDescription": blogDescription,
        "picture": picture,
        "authorName": authorName,
        "tag1": tag1,
        "tag2": tag2,
        "created": created_at,
      };

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      json["blogId"],
      json["blogName"],
      json["blogDescription"],
      json["picture"],
      json["authorName"],
      json["tag1"],
      json["tag2"],
      json["created_at"]
    );
  }
}
