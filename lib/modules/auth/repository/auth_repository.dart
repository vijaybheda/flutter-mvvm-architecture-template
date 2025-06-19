import 'package:flutter_mvvm_architecture_template/core/constants/api_endpoints.dart';
import 'package:flutter_mvvm_architecture_template/core/network/api_client.dart';
import 'package:flutter_mvvm_architecture_template/core/network/failure.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/Logger.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/models/auth_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IAuthRepository {
  TaskEither<Failure, AuthModel> login(String username, String password);
}

class AuthRepository implements IAuthRepository {
  final ApiClient _client = ApiClient();


  @override
  TaskEither<Failure, AuthModel> login(String username, String password) {

    return TaskEither<Failure, AuthModel>.tryCatch(
      () async {
        try {
          final response = await _client.post(
            ApiEndpoints.auth.login,
            body: {"username": username, "password": password},
          );

          return AuthModel.fromJson(response['data']);
        } catch (e) {
          rethrow;
        }
      },
      (error, stackTrace) {
        Logger.error(error.toString(), stackTrace);
        return Failure.apiFailure(message: error.toString());
      },
    );
  }
}
