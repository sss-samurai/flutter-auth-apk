import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum TokenKey {
  refreshToken('refresh_token'),
  accessToken('access_token'),
  tempToken('temp_token');

  final String keyName;
  const TokenKey(this.keyName);
}

class DynamicCookieManager {
  static final _storage = FlutterSecureStorage();

  // Set token
  static Future<void> set(TokenKey key, String value) async {
    await _storage.write(key: key.name, value: value);
  }

  // Get token
  static Future<String?> get(TokenKey key) async {
    return await _storage.read(key: key.name);
  }

  // Delete token
  static Future<void> delete(TokenKey key) async {
    await _storage.delete(key: key.name);
  }
}
