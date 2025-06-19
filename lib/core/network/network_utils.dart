import 'dart:convert';
import 'package:http/http.dart' as http;
import 'network_exception.dart';

/// Utility class for network-related operations.
/// Provides common functionality for HTTP headers and response handling.
class NetworkUtils {
  /// Returns the default headers used for HTTP requests
  ///
  /// Returns a Map containing:
  /// - Content-Type: application/json
  /// - Accept: application/json
  /// 
  /// Note: Token header can be added here when needed
  static Map<String, String> defaultHeaders() => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    // Add token header if needed
  };

  /// Handles HTTP response and converts it to appropriate format
  ///
  /// Parameters:
  /// - [response] - The HTTP response to process
  ///
  /// Returns:
  /// - Map<String, dynamic> containing the parsed JSON response
  ///
  /// Throws:
  /// - [NetworkException] if the status code is not in the 2xx range
  static Map<String, dynamic> handleResponse(http.Response response) {
    final statusCode = response.statusCode;
    final Map<String, dynamic> json = jsonDecode(response.body);

    if (statusCode >= 200 && statusCode < 300) {
      return json;
    } else {
      throw NetworkException(
        statusCode: statusCode,
        message: json['message'] ?? 'Unknown error',
      );
    }
  }
}
