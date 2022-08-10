import 'package:flutter/material.dart';
import 'components/myHomeAppBar.dart';
import 'components/patientProfiles.dart';
import 'components/upcomingConsultations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyHomeAppBar(),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            UpcomingConsultations(),
            PatientProfiles(),
          ],
        ),
      ),
    );
  }
}
