import 'package:coffee_app/constants.dart';
import 'package:coffee_app/presentation/screens/get_started_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        colorScheme: ColorScheme.fromSeed(seedColor: kBrandColor),
        useMaterial3: true,
      ),
      home: GetStartedScreen(),
    );
  }
}
