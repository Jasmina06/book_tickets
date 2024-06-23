import 'package:flutter/material.dart';
import 'package:real_project2/screens/bottom_bar.dart';
import 'package:real_project2/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}

