import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/signup_form_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/signup_form_model.dart';
import '../models/signin_form_model.dart';
import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {
  final String host = 'http://127.0.0.1';
  late String token;
  bool isLoading = false;

  Future<dynamic> signup(SignupForm signupForm) async {
    try {
      isLoading = true;
      http.Response response = await http.post(
        Uri.parse('$host/api/user'),
        headers: {'Content-type': 'application/json'},
        body: json.encode(signupForm.toJson()),
      );
      isLoading = false;
      if (response.statusCode != 201) {
        return json.decode(response.body);
      }
      return null;
    } catch (e) {
      isLoading = false;
      rethrow;
    }
  }

    Future<dynamic> signin(SigninForm signinForm) async {
    try {
      isLoading = true;
      http.Response response = await http.post(
        Uri.parse('$host/api/auth'),
        headers: {'Content-type': 'application/json'},
        body: json.encode(
          signinForm.toJson(),
        ),
              );
      final Map<String, dynamic> body = json.decode(response.body);
      if (response.statusCode == 200) {
        final User user = User.fromJson(body['user']);
        token = body['token'];
        return user;
      } else {
        return body;
      }
          } catch (e) {
      isLoading = false;
      rethrow;
    }
  }
}

