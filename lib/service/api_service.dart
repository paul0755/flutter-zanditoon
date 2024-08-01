import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zanditoon/models/webtoon_detail_model.dart';
import 'package:zanditoon/models/webtoon_epoisode_model.dart';
import 'package:zanditoon/models/webtoon_model.dart';

class ApiService {
  static String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  static String today = "today";

  static Future<List<WebtoonModel>> getTodaysTonns() async {
    List<WebtoonModel> webtoonInstance = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = (jsonDecode(response.body));
      for (var webtoon in webtoons) {
        webtoonInstance.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstance;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getWebtoonDetail(String id) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpoisodeModel>> getWebtoonEpisode(String id) async {
    List<WebtoonEpoisodeModel> episodesInstance = [];
    final url = Uri.parse('$baseUrl/$id/episodes');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> episodes = jsonDecode(response.body);

      for (var episode in episodes) {
        episodesInstance.add(WebtoonEpoisodeModel.fromjson(episode));
      }
      return episodesInstance;
    }
    throw Error();
  }
}
