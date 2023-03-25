// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

// import 'package:meta/meta.dart';
import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  AuthModel({
    required this.success,
  });

  final Success success;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    success: Success.fromJson(json["success"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success.toJson(),
  };
}

class Success {
  Success({
    required this.token,
    required this.userId,
  });

  final String token;
  final int userId;

  factory Success.fromJson(Map<String, dynamic> json) => Success(
    token: json["token"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user_id": userId,
  };
}