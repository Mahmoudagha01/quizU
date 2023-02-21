import 'package:flutter/material.dart';
import 'package:quizu/utilities/router.dart';
import 'package:quizu/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.login,
    );
  }
}
