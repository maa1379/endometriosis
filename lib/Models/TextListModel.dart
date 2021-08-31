class TextListModel {
  final String id;
  final String title;
  final String text;

  TextListModel({
    this.id,
    this.title,
    this.text,
  });

  factory TextListModel.fromJson(Map<String, dynamic> json) => TextListModel(
    id: json["id"],
    title: json["title"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "text": text,
  };

}

final Food = {
  "list" : [
    {
      "id": 1,
      "title": "yyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
      "text": "yyyyyyyyyyyyyyyyyyy",
    },
    {
      "id": 2,
      "title": "fdfdfsdfddddddddddddddddd",
      "text": "hjjjjjjjjjjjjjjjjjjjjj",
    },
    {
      "id": 3,
      "title": "aaaaaaaaaaaaaaaaaaaaa",
      "text": "ffffffffffffffffffffffffffffffffffffsssssssssss",
    },
  ]
  // TextListModel(id: "1", title: "بیماری اندومتریوز چیست؟", text: ""),

};
