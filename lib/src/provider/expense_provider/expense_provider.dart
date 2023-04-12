import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/expense_model/expense_model.dart';
import '../../widget/loading_progress_indicator.dart';

class ExpenseProvider with ChangeNotifier {

  List<ExpenseModel>? expenseModel;

  Future<void> getExpenseApi () async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.get(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/expense'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("Get Expense Api is working");
      expenseModel = expenseModelFromJson(response.body);
      notifyListeners();
    }
    else {
      debugPrint("Get Expense Api is not working");
    }
  }

  bool? checkPostExpense;

  postExpenseApiCheck(){
    checkPostExpense = false;
    notifyListeners();
  }


  Future<void> postExpenseApi (title, categoryId, description, date, price, startingBalance) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.post(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/expense'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },
      body: jsonEncode(
        <String, String>{
          'title': title.toString(),
          'category_id':categoryId.toString(),
          'description':description.toString(),
          'date': date.toString(),
          'price': price.toString(),
          'starting_balance': startingBalance.toString(),
        },
      ),
    );
    if(response.statusCode == 200) {
      debugPrint("post Expense Api is working");
      getExpenseApi();
      checkPostExpense = true;
      notifyListeners();
    }
    else {
      debugPrint("Post Expense Api is not working");
      checkPostExpense = true;
      notifyListeners();
    }
    print(response.body);
  }


  Future<void> deleteExpenseApi (context, id) async {
    showDialog(context: context,barrierDismissible: false, builder: (BuildContext context){
      return const LoadingProgressIndicator();
    });
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.delete(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/expense/$id'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("delete Expense Api is working");
      getExpenseApi();
      Navigator.of(context).pop();
      notifyListeners();
    }
    else {
      debugPrint("delete Expense Api is not working");
      Navigator.of(context).pop();
      notifyListeners();
    }
  }

  bool isEdit = false;
  var rowIndex;

  checkIsEdit(index){
    isEdit = true;
    if(isEdit == true) {
      rowIndex = index;
    }
    notifyListeners();
  }


  Future<void> updateExpenseApi (context, id, title, categoryId, description, date, price , startingBalance) async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.put(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/expense/$id'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },
      body: jsonEncode(
        <String, String>{
          'title': title.toString(),
          'category_id':categoryId.toString(),
          'description':description.toString(),
          'date': date.toString(),
          'price': price.toString(),
          'starting_balance': startingBalance.toString(),
        },
      ),
    );
    if(response.statusCode == 200) {
      debugPrint("update Category Api is working");
      getExpenseApi();
      checkPostExpense = true;
      notifyListeners();
    }
    else {
      debugPrint("update Category Api is not working");
      checkPostExpense = true;
      notifyListeners();
    }
    print(response.body);
  }




  DateTime selectedDate = DateTime.now();
  Future selectDateProvider(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2111));
    if (picked != null) {
      selectedDate = picked;
      notifyListeners();
    }
  }

}