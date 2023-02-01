import '../models/trade.dart';
import 'package:http/http.dart' as http;

class TradeService {
  static const IP = String.fromEnvironment('IP', defaultValue: '192.168.178.100');
  static const api = "http://$IP:8080/api/trade";

  //GET
  Future<List<Trade>?> getTrades() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeListFromJson(json);
    }
    return null;
  }

  Future<Trade?> getTradeById(int id) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  Future<Trade?> getTradeByDeviceId(String deviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/deviceId/$deviceId");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  //POST
  Future<Trade?> postTrade(Trade trade) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: tradeToJson(trade));
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  //PUT
  Future<Trade?> updateTrade(Trade trade) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.put(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: tradeToJson(trade));
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  Future<Trade?> updateCardId(String deviceId, int cardId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$deviceId/card/$cardId");

    var response = await client.put(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  Future<Trade?> updateAccept(String deviceId, bool accept) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$deviceId/accept/$accept");

    var response = await client.put(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }


  //DELETE
  Future<Trade?> deleteTradeById(int id) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.delete(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  Future<Trade?> deleteTradeByDeviceId(String deviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/deviceId/$deviceId");

    var response = await client.delete(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }
}
