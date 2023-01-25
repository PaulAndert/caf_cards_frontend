import 'dart:convert';

import 'package:myapp/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const api = "http://192.168.0.2:8080/api/user"; //Marius' IP

  Future<List<User>?> getUsers() async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return userListFromJson(json);
    }
    return null;
  }

  Future<User?> getUserById(int id) async {

    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
    return null;
  }

  Future<User?> getUserByDeviceId(String deviceId) async {
    var client = http.Client();
    var uri = Uri.parse("$api/deviceId/$deviceId");

    var response = await client.get(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    if(response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
    return null;
  }

  Future<User?> postUser(User user) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.post(uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
        body:userToJson(user));
    if(response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
    return null;
  }

  Future<User?> updateUser(User user) async {
    var client = http.Client();
    var uri = Uri.parse(api);

    var response = await client.put(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:userToJson(user));
    if(response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
    return null;
  }

  Future<User?> deleteUserById(int id) async {
    var client = http.Client();
    var uri = Uri.parse("$api/$id");

    var response = await client.delete(uri,
        headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if(response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
    return null;
  }
}