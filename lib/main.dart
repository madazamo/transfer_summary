import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/screens/transfer_summary/transfer_summary_screen.dart';
import 'package:flutter_test_brandon_demon/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transfer Summary Demo',
      theme: customTheme,
      home: TransferSumaryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
