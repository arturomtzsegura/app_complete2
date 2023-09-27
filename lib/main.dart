import 'package:app_complete2/login.dart';
import 'package:app_complete2/sliddingUpPanel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: slidingUpPanel()), // use MaterialApp
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
