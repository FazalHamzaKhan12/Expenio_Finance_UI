import 'package:appvisual_ui/firstpage.dart';
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
      title: 'Habit Builder Ui',
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
