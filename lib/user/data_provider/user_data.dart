import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:github_user_search_tool/user/models/user.dart';
import 'package:http/http.dart' as http;

class UserDataProvider {
  final _baseUrl = 'https://api.github.com/users';
  final http.Client httpClient;

  UserDataProvider({required this.httpClient}) : assert(httpClient != null);

    Future<List<User>> getUsers() async {
    final response = await httpClient.get(Uri.parse('$_baseUrl'));

    if (response.statusCode == 200) {
      final users = jsonDecode(response.body) as List;
      return users.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<User> getUser(String Login) async {
    final response = await httpClient.get(Uri.parse('$_baseUrl/{Login}'));

    if (response.statusCode == 200) {
      final user = jsonDecode(response.body);
      return User.fromJson(user);
    } else {
      throw Exception('Failed to load User');
    }
  }
  }

