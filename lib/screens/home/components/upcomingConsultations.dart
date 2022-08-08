import 'package:flutter/material.dart';

class UpcomingConsultations extends StatelessWidget {
  const UpcomingConsultations({
    Key? key,
  }) : super(key: key);

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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10.0,
                    ),
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFCEE0F4),
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
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  AssetImage("assets/images/doctor1.png"),
                              backgroundColor: Colors.grey,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "08:45Pm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF00dca7),
                                  ),
                                ),
                                Text(
                                  "Aug 14",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Text(
                          "Kate \nBrown",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                              color: Color(0XFFfefefe),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Text(
                            "Wait for Call",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF0052A6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
