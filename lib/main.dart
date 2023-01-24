import 'package:flutter/material.dart';
import 'package:language_learning_app/Screens/HomePage.dart';

void main() {
  runApp(const LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage());
  }

}