import 'dart:convert';
import 'package:http/http.dart' as http;
import '../app/app_env.dart';

class ApiClient {
  final Environment environment;

  ApiClient({required this.environment});

  Uri _buildUri(String endpoint) => Uri.parse('${environment.apiUrl}$endpoint');

  Map<String, String> _buildHeaders({String? token}) {
    final headers = <String, String>{
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
    return headers;
  }

  Future<http.Response> get(String endpoint, {String? token}) async {
    final uri = _buildUri(endpoint);
    return http.get(uri, headers: _buildHeaders(token: token));
  }

  Future<http.Response> post(
    String endpoint, {
    String? token,
    dynamic body,
  }) async {
    final uri = _buildUri(endpoint);
    return http.post(
      uri,
      headers: _buildHeaders(token: token),
      body: body != null ? jsonEncode(body) : null,
    );
  }

  Future<http.Response> put(
    String endpoint, {
    String? token,
    dynamic body,
  }) async {
    final uri = _buildUri(endpoint);
    return http.put(
      uri,
      headers: _buildHeaders(token: token),
      body: body != null ? jsonEncode(body) : null,
    );
  }

  Future<http.Response> delete(
    String endpoint, {
    String? token,
    dynamic body,
  }) async {
    final uri = _buildUri(endpoint);
    return http.delete(
      uri,
      headers: _buildHeaders(token: token),
      body: body != null ? jsonEncode(body) : null,
    );
  }
}
