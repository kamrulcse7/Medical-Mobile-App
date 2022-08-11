import 'package:flutter/material.dart';


class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    Key? key,
    
    required GlobalKey<ScaffoldState> scaffoldkey,
  }) : _scaffoldkey = scaffoldkey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldkey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage:
                AssetImage("assets/images/patients/jasica.jpg"),
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text.rich(
            TextSpan(
              text: "Welcome back\n",
              children: [
                TextSpan(
                  text: "Jassica",
                  style: TextStyle(
                    color: Color(0xFF08203a),
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
              style: TextStyle(
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w300,
                color: Color(0xFF08203a),
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openEndDrawer();
            },
            icon: Icon(
              Icons.format_align_right_sharp,
              size: 36.0,
              color: Color(0xFF091e39),
            ),
          ),
        ],
      ),
    );
  }
}
