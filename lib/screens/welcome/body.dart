import 'package:flutter/material.dart';
import 'package:medical_mobile_app/screens/frontScreen.dart';
import 'package:medical_mobile_app/screens/welcome/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "Virtual\n",
                children: [
                  TextSpan(
                    text: "Ecosystem.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontSize: size.width * 0.12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00dca7),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "Specialised healthcare, on a single tech platfrom,\nsimplifying access for anyone, anywhere.",
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.0,
                height: 2.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: size.height * 0.32,
                    width: size.width * 0.40,
                    color: Color(0xFF0a70de),
                    padding: EdgeInsets.only(top: 20.0),
                    child: Image.asset(
                      "assets/images/doctor1.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: size.height * 0.32,
                      width: size.width * 0.40,
                      color: Color(0xFFdcedff),
                      padding: EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        "assets/images/doctor2.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => FrontScreen(),
                    ),
                  ),
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: Color(0xFF00dca7),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Text(
                  "Get\nStarted",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
