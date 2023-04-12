// To parse this JSON data, do
//
//     final dashboardStatsModel = dashboardStatsModelFromJson(jsonString);

import 'dart:convert';

DashboardStatsModel dashboardStatsModelFromJson(String str) => DashboardStatsModel.fromJson(json.decode(str));

String dashboardStatsModelToJson(DashboardStatsModel data) => json.encode(data.toJson());

class DashboardStatsModel {
  DashboardStatsModel({
    required this.totalCategories,
    required this.totalExpenseRecords,
    required this.currentMonthExpense,
    required this.currentYearExpense,
  });

  final int totalCategories;
  final int totalExpenseRecords;
  final int currentMonthExpense;
  final int currentYearExpense;

  factory DashboardStatsModel.fromJson(Map<String, dynamic> json) => DashboardStatsModel(
    totalCategories: json["total_categories"],
    totalExpenseRecords: json["total_expense_records"],
    currentMonthExpense: json["current_month_expense"],
    currentYearExpense: json["current_year_expense"],
  );

  Map<String, dynamic> toJson() => {
    "total_categories": totalCategories,
    "total_expense_records": totalExpenseRecords,
    "current_month_expense": currentMonthExpense,
    "current_year_expense": currentYearExpense,
  };
}
