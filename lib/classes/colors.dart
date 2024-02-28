// ignore: file_names
class ColorClass {
  int? colorId;
  String? colorHex;

  ColorClass(this.colorId, this.colorHex);

  Map<String, dynamic> toJson() => {
    "colorId": colorId,
    "hexacolor": colorHex,
  };

factory ColorClass.fromJson(Map<String, dynamic> json) {
    return ColorClass(
      json['colorId'],
      json['hexacolor'],
    );
  }
}