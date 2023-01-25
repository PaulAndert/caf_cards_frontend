import 'package:http/http.dart' as http;

import '../models/ability.dart';

class AbilityService {
  static const api = "http://192.168.0.2:8080/api/ability"; //Marius' IP

  Future<List<Ability>?> getAbilities() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return abilityListFromJson(json);
    }
    return null;
  }

  Future<Ability?> getAbilityById(int id) async {

    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return abilityFromJson(json);
    }
    return null;
  }
}