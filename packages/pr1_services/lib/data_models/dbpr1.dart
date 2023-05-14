class DBpr {
  int id;
  String img;

  DBpr({
    this.id = 0,
    this.img = "",
  });
  factory DBpr.fromMap(Map<String, dynamic> json) => DBpr(
        id: json['id'] ?? 0,
        img: json['img'] ?? '',
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "img": img,
      };
}
