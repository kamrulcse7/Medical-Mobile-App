import 'package:flutter/material.dart';

import 'patientBottomSection.dart';
import 'patientTopSection.dart';

class PatientProfiles extends StatelessWidget {
  const PatientProfiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 5,
      child: Container(
        // padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 8.0),
        child: Column(
          children: [
            PatientTopSection(),
            PatientBottomSection(),
          ],
        ),
      ),
    );
  }
}
