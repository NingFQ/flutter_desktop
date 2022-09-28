import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
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
      theme: lightTheme,
      onGenerateRoute: AppRoutes().onGenerateRoute,
      navigatorKey: AppRoutes.navigatorKey,
      home: const HomePage(),
      builder: FlutterSmartDialog.init(),
    );
  }
}

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.pink,
  primaryColor: Colors.white,
  primaryTextTheme: const TextTheme(
    headline6: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0.5,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 18,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
    size: 18,
  ),
);
