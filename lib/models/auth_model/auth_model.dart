// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

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
    required this.user,
  });

  final String token;
  final User user;

  factory Success.fromJson(Map<String, dynamic> json) => Success(
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user": user.toJson(),
  };
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.city,
    required this.country,
    required this.purchased,
    required this.image,
    required this.companyName,
    required this.companyAddress,
    required this.companyEmail,
    required this.companyPhone,
    required this.companyLogo,
  });

  final int id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String city;
  final String country;
  final dynamic purchased;
  final String image;
  final String companyName;
  final String companyAddress;
  final String companyEmail;
  final String companyPhone;
  final String companyLogo;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    city: json["city"],
    country: json["country"],
    purchased: json["purchased"],
    image: json["image"],
    companyName: json["company_name"],
    companyAddress: json["company_address"],
    companyEmail: json["company_email"],
    companyPhone: json["company_phone"],
    companyLogo: json["company_logo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "address": address,
    "city": city,
    "country": country,
    "purchased": purchased,
    "image": image,
    "company_name": companyName,
    "company_address": companyAddress,
    "company_email": companyEmail,
    "company_phone": companyPhone,
    "company_logo": companyLogo,
  };
}
