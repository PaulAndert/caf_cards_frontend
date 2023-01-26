import '../models/card.dart';
import 'package:http/http.dart' as http;

class CardService {
  static const api = "http://192.168.0.2:8080/api/card"; //Marius' IP

  Future<List<Card>?> getCards() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardListFromJson(json);
    }
    return null;
  }

  Future<List<Card>?> getCardsByUser(String deviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/user/$deviceId");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardListFromJson(json);
    }
    return null;
  }

  Future<Card?> getCardById(int id) async {

    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return cardFromJson(json);
    }
    return null;
  }

  Future<Card?> postCard(Card card) async {
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

  Future<Card?> updateCard(Card card) async {
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

  Future<Card?> deleteCardById(int id) async {
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