// To parse this JSON data, do
//
//     final reportsModel = reportsModelFromJson(jsonString);

import 'dart:convert';

ReportsModel reportsModelFromJson(String str) => ReportsModel.fromJson(json.decode(str));

String reportsModelToJson(ReportsModel data) => json.encode(data.toJson());

class ReportsModel {
  ReportsModel({
    required this.thisMonthOpeningBalance,
    required this.thisMonthClosingBalancee,
    required this.expenses,
  });

  final int thisMonthOpeningBalance;
  final int thisMonthClosingBalancee;
  final Expenses expenses;

  factory ReportsModel.fromJson(Map<String, dynamic> json) => ReportsModel(
    thisMonthOpeningBalance: json["this_month_opening_balance"],
    thisMonthClosingBalancee: json["this_month_closing_balancee"],
    expenses: Expenses.fromJson(json["expenses"]),
  );

  Map<String, dynamic> toJson() => {
    "this_month_opening_balance": thisMonthOpeningBalance,
    "this_month_closing_balancee": thisMonthClosingBalancee,
    "expenses": expenses.toJson(),
  };
}

class Expenses {
  Expenses({
    required this.mobile,
    required this.laptop,
  });

  final Mobile mobile;
  final Mobile laptop;

  factory Expenses.fromJson(Map<String, dynamic> json) => Expenses(
    mobile: Mobile.fromJson(json["Mobile"]),
    laptop: Mobile.fromJson(json["laptop"]),
  );

  Map<String, dynamic> toJson() => {
    "Mobile": mobile.toJson(),
    "laptop": laptop.toJson(),
  };
}

class Mobile {
  Mobile({
    required this.price,
    required this.startingBalance,
  });

  final int price;
  final int startingBalance;

  factory Mobile.fromJson(Map<String, dynamic> json) => Mobile(
    price: json["price"],
    startingBalance: json["starting_balance"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "starting_balance": startingBalance,
  };
}
