// To parse this JSON data, do
//
//     final trade = tradeFromJson(jsonString);

import 'dart:convert';

Trade tradeFromJson(String str) => Trade.fromJson(json.decode(str));

String tradeToJson(Trade data) => json.encode(data.toJson());

List<Trade> tradeListFromJson(String str) => List<Trade>.from(json.decode(str).map((x) => Trade.fromJson(x)));

String tradeListToJson(List<Trade> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trade {
  Trade({
    required this.id,
    required this.senderDeviceId,
    required this.receiverDeviceId,
    required this.senderCardId,
    required this.receiverCardId,
    required this.senderAccepted,
    required this.receiverAccepted,
  });

  int id;
  String senderDeviceId;
  String receiverDeviceId;
  int senderCardId;
  int receiverCardId;
  bool senderAccepted;
  bool receiverAccepted;

  factory Trade.fromJson(Map<String, dynamic> json) => Trade(
    id: json["id"],
    senderDeviceId: json["senderDeviceId"],
    receiverDeviceId: json["receiverDeviceId"],
    senderCardId: json["senderCardId"],
    receiverCardId: json["receiverCardId"],
    senderAccepted: json["senderAccepted"],
    receiverAccepted: json["receiverAccepted"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "senderDeviceId": senderDeviceId,
    "receiverDeviceId": receiverDeviceId,
    "senderCardId": senderCardId,
    "receiverCardId": receiverCardId,
    "senderAccepted": senderAccepted,
    "receiverAccepted": receiverAccepted,
  };
}
