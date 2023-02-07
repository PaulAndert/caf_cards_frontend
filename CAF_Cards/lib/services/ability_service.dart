import 'package:http/http.dart' as http;
import '../models/ability.dart';

class AbilityService {
  static const IP = String.fromEnvironment(
    'IP',
    defaultValue: '192.168.0.12',
  );
  static const api = "http://$IP:8080/api/ability";

  Future<List<Ability>?> getAbilities() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return abilityListFromJson(json);
    }
    return null;
  }

  Future<Ability?> getAbilityById(int id) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return abilityFromJson(json);
    }
    return null;
  }
}
