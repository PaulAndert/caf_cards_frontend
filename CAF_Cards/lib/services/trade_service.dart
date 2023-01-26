import '../models/trade.dart';
import 'package:http/http.dart' as http;

class TradeService {
  static const api = "http://192.168.0.2:8080/api/trade"; //Marius' IP

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

  Future<Trade?> getTradeByReceiverDeviceId(String receiverDeviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/receiverId/$receiverDeviceId");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

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

  Future<Trade?> updateSendCardId(String senderDeviceId, int sendCardId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$senderDeviceId/send/$sendCardId");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

  Future<Trade?> updateReceiverCardId(String receiverDeviceId, int receiveCardId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$receiverDeviceId/send/$receiveCardId");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return tradeFromJson(json);
    }
    return null;
  }

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
