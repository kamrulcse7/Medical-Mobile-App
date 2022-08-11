
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.black87),
            ),
            elevation: 0.0,
            title: Text("Profile Details", style: TextStyle(color: Colors.black87),),
            centerTitle: true,
            toolbarHeight: 80.0,
            actions: [SizedBox()],
          ),
        ],
      ),
    );
  }
}
