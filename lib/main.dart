import 'package:fitness/pages/challenges.dart';
import 'package:flutter/material.dart';

import 'pages/empty.dart';
import 'pages/intro.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      theme: ThemeData(
        fontFamily: 'Inter'
      ),
      initialRoute: Intro.id,
      routes: {
        Intro.id: (context) => const Intro(),
        Login.id: (context) => const Login(),
        Challenges.id: (context) => const Challenges(),
        Empty.id: (context) => const Empty(),
      },
    );
  }
}