import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/category_model/category_model.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel>? categoryModel;

  Future<void> getCategoryApi () async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    print(userToken);
    var response = await http.get(
        Uri.parse('https://cash-monitoring.ikaedigital.com/api/category'),
        headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
          'Authorization': "Bearer $userToken"
        },);
    if(response.statusCode == 200) {
      debugPrint("Get Category Api is working");
      categoryModel = categoryModelFromJson(response.body);
      notifyListeners();
    }
    else {
      debugPrint("Get Category Api is not working");
      print(response.body);
    }
    print(response.body);
  }

  Future<void> postCategoryApi (categoryTitle) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    print(userToken);
    var response = await http.post(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/category'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },
      body: jsonEncode(
        <String, String>{
          'name': categoryTitle.toString()
        },
      ),
    );
    if(response.statusCode == 200) {
      debugPrint("post Category Api is working");
      getCategoryApi();
      notifyListeners();
    }
    else {
      debugPrint("Post Category Api is not working");
      print(response.body);
    }
    print(response.body);
  }

}