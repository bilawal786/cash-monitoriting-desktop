// To parse this JSON data, do
//
//     final expenseModel = expenseModelFromJson(jsonString);

import 'dart:convert';

List<ExpenseModel> expenseModelFromJson(String str) => List<ExpenseModel>.from(json.decode(str).map((x) => ExpenseModel.fromJson(x)));

String expenseModelToJson(List<ExpenseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExpenseModel {
  ExpenseModel({
    required this.id,
    required this.category,
    required this.title,
    required this.price,
    required this.date,
    required this.description,
  });

  final int id;
  final String category;
  final String title;
  final String price;
  final String date;
  final String description;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) => ExpenseModel(
    id: json["id"],
    category: json["category"],
    title: json["title"],
    price: json["price"],
    date: json["date"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category": category,
    "title": title,
    "price": price,
    "date": date,
    "description": description,
  };
}
