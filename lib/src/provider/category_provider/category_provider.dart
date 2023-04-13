import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/category_model/category_model.dart';
import '../../widget/loading_progress_indicator.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel>? categoryModel;

  Future<void> getCategoryApi () async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
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
    }
  }


  bool? checkPostCategory;

  postCategoryApiCheck(){
    checkPostCategory = false;
    notifyListeners();
  }

  Future<void> postCategoryApi (categoryTitle) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
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
      checkPostCategory = true;
      notifyListeners();
    }
    else {
      debugPrint("Post Category Api is not working");
      checkPostCategory = true;
      notifyListeners();
    }
  }

  bool? deleteApiCheck;

  checkDeleteApi (){
    deleteApiCheck = false;
    notifyListeners();
  }

  Future<void> deleteCategoryApi (context, id) async {
    showDialog(context: context,barrierDismissible: false, builder: (BuildContext context){
      return const LoadingProgressIndicator();
    });
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.delete(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/category/$id'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("delete Category Api is working");
      getCategoryApi();
      Navigator.of(context).pop();
      // deleteApiCheck = true;
      notifyListeners();
    }
    else {
      debugPrint("delete Category Api is not working");
      // deleteApiCheck = true;
      Navigator.of(context).pop();
      notifyListeners();
    }
  }

  bool? isEdit;
  var rowIndex;

  setIsEditNull(){
    isEdit = null;
    notifyListeners();
  }

  checkIsEdit(index){
    isEdit = true;
    if(isEdit == true) {
      rowIndex = index;
    }
    notifyListeners();
  }


  Future<void> updateCategoryApi (context, id, categoryTitle) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.put(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/category/$id'),
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
      debugPrint("update Category Api is working");
      getCategoryApi();
      checkPostCategory = true;
      notifyListeners();
    }
    else {
      debugPrint("update Category Api is not working");
      checkPostCategory = true;
      notifyListeners();
    }
    print(response.body);
  }


}