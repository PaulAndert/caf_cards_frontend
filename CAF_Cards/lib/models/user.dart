// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

List<User> userListFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userListToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.id,
    required this.deviceId,
    required this.wins,
    required this.losses,
    required this.created,
    required this.traded,
    required this.collected,
    required this.cardIds,
  });

  int id;
  String deviceId;
  int wins;
  int losses;
  int created;
  int traded;
  int collected;
  List<int> cardIds;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    deviceId: json["deviceId"],
    wins: json["wins"],
    losses: json["losses"],
    created: json["created"],
    traded: json["traded"],
    collected: json["collected"],
    cardIds: List<int>.from(json["cardIds"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "deviceId": deviceId,
    "wins": wins,
    "losses": losses,
    "created": created,
    "traded": traded,
    "collected": collected,
    "cardIds": List<dynamic>.from(cardIds.map((x) => x)),
  };
}