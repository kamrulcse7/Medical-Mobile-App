import 'package:flutter/material.dart';

import 'screens/welcome/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Mobile App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}