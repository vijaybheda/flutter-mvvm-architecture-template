import 'package:flutter_mvvm_architecture_template/core/constants/api_endpoints.dart';
import 'package:flutter_mvvm_architecture_template/core/network/api_client.dart';
import 'package:flutter_mvvm_architecture_template/core/network/failure.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/models/auth_model.dart';

abstract interface class IAuthRepository {
  Future<AuthModel> login(String username, String password);
}

class AuthRepository implements IAuthRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<AuthModel> login(String username, String password) async {
    try {
      final response = await _client.post(
        ApiEndpoints.auth.login,
        body: {"username": username, "password": password},
      );
      return AuthModel.fromJson(response['data']);
    } catch (e) {
      throw Failure.apiFailure(message: e.toString());
    }
  }
}
