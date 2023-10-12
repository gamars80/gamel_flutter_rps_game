import 'package:flutter/material.dart';

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  useMaterial3: true,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  ),
);
