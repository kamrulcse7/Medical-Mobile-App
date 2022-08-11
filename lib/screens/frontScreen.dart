import 'package:flutter/material.dart';
import 'package:medical_mobile_app/pages/page1.dart';
import 'package:medical_mobile_app/pages/page2.dart';
import 'package:medical_mobile_app/pages/page3.dart';
import 'package:medical_mobile_app/screens/home/homeScreen.dart';
import 'package:medical_mobile_app/widgets/tabbarMaterialWidget.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  int _selectedIndex = 0;

  List<Widget> page = [
    HomeScreen(),
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: false,
      body: page[_selectedIndex],
      bottomNavigationBar: TabBarMaterialWidget(
        index: _selectedIndex,
        onChangedTab: onChangedTab,
        
      ),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this._selectedIndex = index;
    });
  }
}
