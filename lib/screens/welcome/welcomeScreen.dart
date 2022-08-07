import 'package:flutter/material.dart';
import 'package:medical_mobile_app/screens/welcome/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
