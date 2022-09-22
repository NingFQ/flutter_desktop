import 'package:flutter/material.dart';
import 'model/theme/theme.dart';
import 'pages/index.dart';
import 'route/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.lightTheme,
      onGenerateRoute: AppRoutes().onGenerateRoute,
      navigatorKey: AppRoutes.navigatorKey,
      home: const HomePage(),
    );
  }
}
