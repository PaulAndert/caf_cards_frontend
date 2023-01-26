// To parse this JSON data, do
//
//     final trade = tradeFromJson(jsonString);

import 'dart:convert';

Trade tradeFromJson(String str) => Trade.fromJson(json.decode(str));

String tradeToJson(Trade data) => json.encode(data.toJson());

class Trade {
  Trade({
    required this.senderDeviceId,
    required this.receiverDeviceId,
    required this.senderCardId,
    required this.receiverCardId,
  });

  String senderDeviceId;
  String receiverDeviceId;
  int senderCardId;
  int receiverCardId;

  factory Trade.fromJson(Map<String, dynamic> json) => Trade(
    senderDeviceId: json["senderDeviceId"],
    receiverDeviceId: json["receiverDeviceId"],
    senderCardId: json["senderCardId"],
    receiverCardId: json["receiverCardId"],
  );

  Map<String, dynamic> toJson() => {
    "senderDeviceId": senderDeviceId,
    "receiverDeviceId": receiverDeviceId,
    "senderCardId": senderCardId,
    "receiverCardId": receiverCardId,
  };
}
