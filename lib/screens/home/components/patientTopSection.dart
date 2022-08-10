import 'package:flutter/material.dart';

import '../../../data/data.dart';
import '../../../models/patient.dart';

class PatientTopSection extends StatelessWidget {
  const PatientTopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Patient profiles",
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF08203a),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xFF0052A6),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
          Container(
            height: 80.0,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Color(0xFF00dca7),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: users.patients!.length,
                    itemBuilder: (context, index) {
                      Patient patient = users.patients![index];
                      return Container(
                        width: 60.0,
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/patients/${patient.imgUrl}"),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
