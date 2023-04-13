import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/reports_model/reports_model.dart';
import '../../widget/loading_progress_indicator.dart';

class ReportProvider with ChangeNotifier {

  bool? checkReportApi;

  reportApiCheckValue (){
    checkReportApi = false;
    notifyListeners();
  }

  var reportsModel;

  Future<void> getReports(context, month, year) async {
    showDialog(context: context,barrierDismissible: false, builder: (BuildContext context){
      return const LoadingProgressIndicator();
    });
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.get(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/reports/$month/$year'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("Get reports Api is working");
      reportsModel = jsonDecode(response.body) as Map<String, dynamic>;
      Navigator.of(context).pop();
      checkReportApi = true;
      notifyListeners();
    }
    else {
      debugPrint("Get reports Api is not working");
      checkReportApi = true;
      Navigator.of(context).pop();
      notifyListeners();
    }
    // print(response.body);
  }



}