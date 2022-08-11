import 'package:flutter/material.dart';
import '../profile/profileDetails.dart';
import 'components/myHomeAppBar.dart';
import 'components/patientProfiles.dart';
import 'components/upcomingConsultations.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      endDrawer: ProfileDetails(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(),
        ],
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyHomeAppBar(scaffoldkey: _scaffoldkey),
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
