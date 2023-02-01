import '../models/card.dart';
import 'package:http/http.dart' as http;

class GamecardService {
  static const IP = String.fromEnvironment('IP', defaultValue: '192.168.178.100');
  static const api = "http://$IP:8080/api/card";

  Future<List<Gamecard>?> getGamecards() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardListFromJson(json);
    }
    return null;
  }

  Future<List<Gamecard>?> getGamecardsByUser(String deviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/user/$deviceId");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardListFromJson(json);
    }
    return null;
  }

  Future<Gamecard?> getGamecardById(int id) async {

    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardFromJson(json);
    }
    return null;
  }

  Future<Gamecard?> postGamecard(Gamecard card) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:cardToJson(card));
    if(response.statusCode == 200) {
      var json = response.body;
      return cardFromJson(json);
    }
    return null;
  }

  Future<Gamecard?> updateGamecard(Gamecard card) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.put(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:cardToJson(card));
    if(response.statusCode == 200) {
      var json = response.body;
      return cardFromJson(json);
    }
    return null;
  }

  Future<Gamecard?> deleteGamecardById(int id) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.delete(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    if(response.statusCode == 200) {
      var json = response.body;
      return cardFromJson(json);
    }
    return null;
  }
}