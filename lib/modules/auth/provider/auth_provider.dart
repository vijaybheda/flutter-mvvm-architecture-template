import 'package:flutter_mvvm_architecture_template/core/services/local_storage_service.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/logger.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/toast_message.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/models/auth_model.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/repository/auth_repository.dart';
import 'package:get/get.dart';

/// Provider class that manages authentication state and operations.
/// This class handles user authentication, maintains auth state, and manages
/// loading/error states during authentication processes.
class AuthProvider {
  final IAuthRepository _repository;

  /// Creates an instance of AuthProvider with the required repository
  ///
  /// Parameters:
  /// - [_repository] - The authentication repository implementation
  AuthProvider(this._repository) {
    Logger.log('AuthProvider: Repository initialized: $_repository');
  }

  /// Current authentication data
  AuthModel? _authData;

  /// Getter for current authentication data
  AuthModel? get authData => _authData;

  /// Loading state flag
  bool _isLoading = false;

  /// Getter for loading state
  bool get isLoading => _isLoading;

  /// Error message if any
  String? _error;

  /// Getter for error message
  String? get error => _error;

  /// Attempts to log in a user with the provided credentials
  ///
  /// Parameters:
  /// - [username] - The user's username
  /// - [password] - The user's password
  ///
  /// This method will:
  /// 1. Set loading state
  /// 2. Clear any previous errors
  /// 3. Attempt authentication
  /// 4. Handle success by storing token and navigating
  /// 5. Handle failure by setting error message
  Future<void> login(String username, String password) async {
    _isLoading = true;
    _error = null;
    final result = await _repository.login(username, password);

    Logger.log("Login successful");
    _authData = result;
    LocalStorageService.setToken(result.accessToken);
    ToastMessage().success("Success", "Login Success", Get.context!);
    _navigateBasedOnRole(result.role);

    _isLoading = false;
  }

  /// Navigates to appropriate screen based on user role
  ///
  /// Parameters:
  /// - [role] - The user's role from authentication response
  ///
  /// This method handles navigation logic for different user roles
  /// and sets error state for unknown roles
  void _navigateBasedOnRole(String role) {
    switch (role) {
      case 'ADMIN':
      case 'MASTER':
      case 'USER':
      default:
        Logger.error(" Unknown role: $role", StackTrace.current);
        _error = "Unknown role: $role";
        return;
    }
  }
}
