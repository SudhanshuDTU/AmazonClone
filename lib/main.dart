import 'package:ecommerce/Routes.dart';
import 'package:ecommerce/features/auth/auth_screen/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue))),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
          color: Colors.white,
        )),
        useMaterial3: true,
      ),
      home: AuthScreen(),
    );
  }
}
