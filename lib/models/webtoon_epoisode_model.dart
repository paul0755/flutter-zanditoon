class WebtoonEpoisodeModel {
  final String id, title, rating, date;

  WebtoonEpoisodeModel.fromjson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
