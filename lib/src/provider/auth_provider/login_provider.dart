import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../../../models/auth_model/auth_model.dart';

class LoginProvider with ChangeNotifier {
  AuthModel? authModel;

  Future<void> loginApi (context, email, pass) async {
    var response = await http.post(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/login'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json"
      },
      body: jsonEncode(
        <String, String>{
          'email': email.toString(),
          'password': pass.toString(),
        },
      ),
    );
    if(response.statusCode == 200 ){
      print("login api is working");
      authModel = authModelFromJson(response.body);
      notifyListeners();
    }else{
      print("login api is not working");
    }

  }
}