class DBpr {
  int id;
  String nickname;
  String description;

  DBpr({
    this.id = 0,
    this.nickname = "",
    this.description = "",
  });
  factory DBpr.fromMap(Map<String, dynamic> json) => DBpr(
        id: json['id'] ?? 0,
        nickname: json['nickname'] ?? '',
        description: json['description'] ?? '',
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "nickname": nickname,
        "description": description,
      };
}
