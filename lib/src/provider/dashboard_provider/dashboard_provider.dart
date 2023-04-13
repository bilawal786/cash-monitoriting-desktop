import 'package:admin_dashboard/models/dashboard_model/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';


class DashboardProvider with ChangeNotifier {
  DashboardStatsModel? dashboardModel;

  Future<void> getDashboardStatsApi() async {
    final SharedPreferences sharePref = await SharedPreferences.getInstance();
    String? userToken = sharePref.getString('token');
    var response = await http.get(
      Uri.parse('https://cash-monitoring.ikaedigital.com/api/dashboard/stats'),
      headers: <String, String>{
        'Accept': "application/json",
        'Content-Type': "application/json",
        'Authorization': "Bearer $userToken"
      },);
    if(response.statusCode == 200) {
      debugPrint("Get dashboard stats Api is working");
      dashboardModel = dashboardStatsModelFromJson(response.body);
      notifyListeners();
    }
    else {
      debugPrint("Get dashboard stats Api is not working");
    }
    // print(response.body);
  }
}