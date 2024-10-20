import 'package:flutter/material.dart';
import 'package:prairie/router/router.dart';
import 'package:prairie/theme/theme.dart';

Future<void> main() async {
  runApp(const PrairieApp());
}

class PrairieApp extends StatelessWidget {
  const PrairieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Prairie",
      theme: appTheme,
      routerConfig: routerConfig,
    );
  }
}
