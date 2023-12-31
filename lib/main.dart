import 'package:flutter/material.dart';
import 'package:flutter_sns_app/view/screen.dart';
import 'package:flutter_sns_app/view/start_up/login_page.dart';
import 'package:flutter_sns_app/view/timeline/time_line_page.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
