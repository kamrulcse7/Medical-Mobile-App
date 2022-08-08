import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/welcome/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      title: 'Medical Mobile App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}