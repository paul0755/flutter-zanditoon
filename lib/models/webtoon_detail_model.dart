class WebtoonDetailModel {
  final id, about, genre, age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
}
