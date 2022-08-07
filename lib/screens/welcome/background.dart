import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Color(0xFF0052a8),
          ),
          Positioned(
            right: -40,
            top: -30,
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                border: Border.all(width: 10.0, color: Colors.white10),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 80,
            top: 80,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 50,
            top: 130,
            child: Container(
              width: 14.0,
              height: 14.0,
              decoration: BoxDecoration(
                color: Color(0xFF00dca7),
                shape: BoxShape.circle,
              ),
            ),
          ),
          
          Positioned(
            right: -25,
            bottom: -25,
            child: Icon(
              Icons.aspect_ratio_sharp,
              color: Colors.white12,
              size: 80.0,
            ),
          ),
          Positioned(
            left: -25,
            top: -15,
            child: Icon(
              Icons.aspect_ratio_sharp,
              color: Colors.white12,
              size: 80.0,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: size.height * 0.15,
            child: Container(
              width: 300,
              height: 250.0,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white10),
                shape: BoxShape.circle,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
