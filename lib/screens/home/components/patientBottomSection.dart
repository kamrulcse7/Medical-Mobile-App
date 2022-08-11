import 'package:flutter/material.dart';

import '../../../widgets/myCustomButton.dart';

class PatientBottomSection extends StatefulWidget {
  const PatientBottomSection({
    Key? key,
  }) : super(key: key);

  @override
  State<PatientBottomSection> createState() => _PatientBottomSectionState();
}

class _PatientBottomSectionState extends State<PatientBottomSection> {
  bool isSelected = false;
  bool isEnquiries = true;
  bool isReposrts = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFcee0f4),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyCustomButton(
                    bgColor: isEnquiries == true
                        ? Color(0xFF0052A6)
                        : Colors.transparent,
                    text: "Last enquiries",
                    textColor:
                        isEnquiries == true ? Colors.white : Colors.black87,
                    ontap: () {
                      setState(() {
                        isEnquiries = true;
                        isReposrts = false;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  MyCustomButton(
                    bgColor: isReposrts == true
                        ? Color(0xFF0052A6)
                        : Colors.transparent,
                    text: "Reports",
                    textColor:
                        isReposrts == true ? Colors.white : Colors.black87,
                    ontap: () {
                      setState(() {
                        isEnquiries = false;
                        isReposrts = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: isEnquiries == true ? last_enquiried(size) : Container(),
            ),
          ],
        ),
      ),
    );
  }

  last_enquiried(Size size) {
    // Doctor doctor = users.doctors![index];
    return Container(
      child: Row(
        children: [
          Container(
            width: 5.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Color(0xFF00dca7),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundImage:
                AssetImage("assets/images/doctors/anna_kowalsky.jpg"),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text.rich(
            TextSpan(
              text: "Anna Kowalsky\n",
              
              children: [
                TextSpan(
                  text: "Video Consultation",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                height: 1.5
              ),
            ),
          ),
        ],
      ),
    );
  }
}
