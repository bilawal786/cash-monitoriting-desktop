import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../../../models/category_model/category_model.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel>? categoryModel;

  Future<void> getCategoryApi () async {
    var response = await http.post(
        Uri.parse('https://cash-monitoring.ikaedigital.com/api/login'),
        headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
          'Authorization': "Bearer "
        },);
  }

}