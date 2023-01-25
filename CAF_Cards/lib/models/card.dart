// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'dart:convert';

Card cardFromJson(String str) => Card.fromJson(json.decode(str));

String cardToJson(Card data) => json.encode(data.toJson());

List<Card> cardListFromJson(String str) => List<Card>.from(json.decode(str).map((x) => Card.fromJson(x)));

String cardListToJson(List<Card> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Card {
  Card({
    required this.id,
    required this.name,
    required this.description,
    required this.energy,
    required this.strength,
    required this.health,
    required this.userIds,
    required this.abilityId,
  });

  int id;
  String name;
  String description;
  int energy;
  int strength;
  int health;
  List<int> userIds;
  int abilityId;

  factory Card.fromJson(Map<String, dynamic> json) => Card(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    energy: json["energy"],
    strength: json["strength"],
    health: json["health"],
    userIds: List<int>.from(json["userIds"].map((x) => x)),
    abilityId: json["abilityId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "energy": energy,
    "strength": strength,
    "health": health,
    "userIds": List<dynamic>.from(userIds.map((x) => x)),
    "abilityId": abilityId,
  };
}
