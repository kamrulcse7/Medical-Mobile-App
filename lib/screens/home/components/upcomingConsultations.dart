import 'package:flutter/material.dart';
import 'package:medical_mobile_app/data/data.dart';
import 'package:medical_mobile_app/models/doctor.dart';

class UpcomingConsultations extends StatefulWidget {
  const UpcomingConsultations({
    Key? key,
  }) : super(key: key);

  @override
  State<UpcomingConsultations> createState() => _UpcomingConsultationsState();
}

class _UpcomingConsultationsState extends State<UpcomingConsultations> {
  // Color _color = Colors.amber;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Upcoming consultations",
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
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.doctors!.length,
                itemBuilder: (context, index) {
                  Doctor doctor = users.doctors![index];
                  // int _selectedIndex = 0;
                  return doctorContainer(context, doctor, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  doctorContainer(BuildContext context, Doctor doctor, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10.0,
        ),
        margin: const EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
          color:
              _selectedIndex == index ? Color(0xFF0052A8) : Color(0xFFCEE0F4),
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.0,
                        color: _selectedIndex == index
                            ? Color(0xFF2196F3)
                            : Colors.white,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/doctors/${doctor.imgUrl}",
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "08:45Pm",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: _selectedIndex == index
                            ? Colors.white
                            : Color.fromARGB(200, 9, 176, 143),
                      ),
                    ),
                    Text(
                      "Aug 14",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: _selectedIndex == index
                            ? Colors.white
                            : Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(),
            Text(
              "${doctor.name}",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                color: _selectedIndex == index ? Colors.white : Colors.black87,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? Color(0xFF00dca7)
                      : Color(0XFFfefefe),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  _selectedIndex == index ? "Join the call" : "Wait for Call",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: _selectedIndex == index
                        ? Colors.white
                        : Color(0xFF0052A6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
