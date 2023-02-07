// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'dart:convert';

Gamecard cardFromJson(String str) => Gamecard.fromJson(json.decode(str));

String cardToJson(Gamecard data) => json.encode(data.toJson());

List<Gamecard> cardListFromJson(String str) => List<Gamecard>.from(json.decode(str).map((x) => Gamecard.fromJson(x)));

String cardListToJson(List<Gamecard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// defines what a card is
class Gamecard {
  Gamecard({
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

  factory Gamecard.fromJson(Map<String, dynamic> json) => Gamecard(
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
