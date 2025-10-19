import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/features/homeScreen/controllers/auth_header.dart';

final homeMainScreenControllerProvider = Provider<AuthHeader>((ref) {
  return AuthHeader();
});
