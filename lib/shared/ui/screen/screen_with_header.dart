import 'package:flutter/material.dart';
import 'package:token_manage_apk/shared/widgets/header/app_header.dart';

class ScreenWithHeader extends StatelessWidget {
  final Widget child;
  final String title;

  const ScreenWithHeader({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Prevents overlap with status bar
          SafeArea(child: AppHeader(title: title)),
          Expanded(child: child),
        ],
      ),
    );
  }
}
