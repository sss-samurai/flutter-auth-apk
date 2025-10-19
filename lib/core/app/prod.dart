import 'package:flutter/material.dart';
import 'app.dart';
import 'app_env.dart';

void main() {
  runApp(MyApp(environment: Environment.fromString(Environment.prod)));
}
