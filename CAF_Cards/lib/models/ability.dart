// To parse this JSON data, do
//
//     final ability = abilityFromJson(jsonString);

import 'dart:convert';

Ability abilityFromJson(String str) => Ability.fromJson(json.decode(str));

String abilityToJson(Ability data) => json.encode(data.toJson());

List<Ability> abilityListFromJson(String str) => List<Ability>.from(json.decode(str).map((x) => Ability.fromJson(x)));

String abilityListToJson(List<Ability> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ability {
  Ability({
    required this.id,
    required this.name,
    required this.cost,
    required this.cardIds,
  });

  int id;
  String name;
  int cost;
  List<int> cardIds;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
    id: json["id"],
    name: json["name"],
    cost: json["cost"],
    cardIds: List<int>.from(json["cardIds"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "cost": cost,
    "cardIds": List<dynamic>.from(cardIds.map((x) => x)),
  };
}