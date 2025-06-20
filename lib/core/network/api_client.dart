import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/env.dart';
import 'network_utils.dart';

/// A client for making HTTP requests to the API.
/// This class provides methods for making HTTP requests (GET, POST, PUT, DELETE, PATCH)
/// to the server with proper error handling and response processing.
class ApiClient {
  /// HTTP client instance for making network requests
  final http.Client _client = http.Client();

  /// Makes a POST request to the specified endpoint
  ///
  /// Parameters:
  /// - [path] - The API endpoint path
  /// - [body] - Optional request body as Map
  /// - [headers] - Optional custom headers
  ///
  /// Returns a Map containing the parsed response
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse("${AppConfig.baseUrl}$path");
    final defaultHeaders = await NetworkUtils.defaultHeaders();
    final response = await _client.post(
      uri,
      headers: headers ?? defaultHeaders,
      body: jsonEncode(body),
    );

    return NetworkUtils.handleResponse(response);
  }

  /// Makes a GET request to the specified endpoint
  ///
  /// Parameters:
  /// - [path] - The API endpoint path
  /// - [headers] - Optional custom headers
  ///
  /// Returns a Map containing the parsed response
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse("${AppConfig.baseUrl}$path");
    final defaultHeaders = await NetworkUtils.defaultHeaders();
    final response = await _client.get(uri, headers: headers ?? defaultHeaders);

    return NetworkUtils.handleResponse(response);
  }

  /// Makes a PUT request to the specified endpoint
  ///
  /// Parameters:
  /// - [path] - The API endpoint path
  /// - [body] - Optional request body as Map
  /// - [headers] - Optional custom headers
  ///
  /// Returns a Map containing the parsed response
  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse("${AppConfig.baseUrl}$path");
    final defaultHeaders = await NetworkUtils.defaultHeaders();

    final response = await _client.put(
      uri,
      headers: headers ?? defaultHeaders,
      body: jsonEncode(body),
    );

    return NetworkUtils.handleResponse(response);
  }

  /// Makes a DELETE request to the specified endpoint
  ///
  /// Parameters:
  /// - [path] - The API endpoint path
  /// - [headers] - Optional custom headers
  ///
  /// Returns a Map containing the parsed response
  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse("${AppConfig.baseUrl}$path");
    final defaultHeaders = await NetworkUtils.defaultHeaders();

    final response = await _client.delete(
      uri,
      headers: headers ?? defaultHeaders,
    );

    return NetworkUtils.handleResponse(response);
  }

  /// Makes a PATCH request to the specified endpoint
  ///
  /// Parameters:
  /// - [path] - The API endpoint path
  /// - [body] - Optional request body as Map
  /// - [headers] - Optional custom headers
  ///
  /// Returns a Map containing the parsed response
  Future<Map<String, dynamic>> patch(
    String path, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse("${AppConfig.baseUrl}$path");
    final defaultHeaders = await NetworkUtils.defaultHeaders();

    final response = await _client.patch(
      uri,
      headers: headers ?? defaultHeaders,
      body: jsonEncode(body),
    );

    return NetworkUtils.handleResponse(response);
  }
}
