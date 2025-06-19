import 'package:json_annotation/json_annotation.dart';

class AuthModel {
  String id;
  String username;
  String role;
  String accessToken;
  AuthModel({
    required this.accessToken,
    required this.role,
    required this.id,
    required this.username,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      id: json['_id'] as String,
      username: json['username'] as String,
      role: json['role'] as String,
      accessToken: json['access_token'] as String,
    );
  }
}