import 'package:app_complete2/addUser.dart';
import 'package:app_complete2/gemExample.dart';
import 'package:app_complete2/home.dart';
import 'package:app_complete2/login.dart';
import 'package:app_complete2/menuOpts.dart';
import 'package:app_complete2/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: home()), // use MaterialApp
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
