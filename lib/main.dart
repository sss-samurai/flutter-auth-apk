import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app/app_env.dart';
import 'core/app/app.dart';
import 'core/utils/logger.dart';

void main() {
  const String flavor = String.fromEnvironment('flavor', defaultValue: 'dev');

  Environment env;
  switch (flavor) {
    case 'prod':
      Logger.setProduction(true);
      env = Environment.fromString(Environment.prod);
      break;
    case 'stage':
      Logger.setProduction(false);
      env = Environment.fromString(Environment.stage);
      break;
    case 'dev':
    default:
      Logger.setProduction(false);
      env = Environment.fromString(Environment.dev);
      break;
  }

  runApp(ProviderScope(child: MyApp(environment: env)));
}
