import 'package:http/http.dart' as http;
import 'package:token_manage_apk/core/utils/dynamic_cookie_manager.dart';
import 'api_endpoints.dart';

enum SplitKey { GET, POST, PUT, DELETE }

class ApiController {
  final ApiClient client;

  ApiController({required this.client});

  Future<http.Response> manageApiRequest(
    dynamic body,
    String endpoint,
    SplitKey method, {
    bool isTokenRequired = true,
    TokenKey tokenType = TokenKey.accessToken,
  }) async {
    String? token;

    if (isTokenRequired) {
      token = await DynamicCookieManager.get(tokenType);

      if (token == null) {
        throw Exception("Token missing. Redirected to login.");
      }
    }

    http.Response response = await apiRequest(
      body: body,
      splitKey: method,
      endpoint: endpoint,
      token: token,
    );
    if (response.statusCode != 401 || tokenType == TokenKey.tempToken) {
      return response;
    }
    return response;
  }

  Future<http.Response> apiRequest({
    dynamic body,
    required SplitKey splitKey,
    required String endpoint,
    String? token,
  }) async {
    switch (splitKey) {
      case SplitKey.GET:
        return client.get(endpoint, token: token);
      case SplitKey.POST:
        return client.post(endpoint, token: token, body: body);
      case SplitKey.PUT:
        return client.put(endpoint, token: token, body: body);
      case SplitKey.DELETE:
        return client.delete(endpoint, token: token, body: body);
    }
  }
}
