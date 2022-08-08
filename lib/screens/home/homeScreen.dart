import 'package:flutter/material.dart';
import 'components/myHomeAppBar.dart';
import 'components/upcomingConsultations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyHomeAppBar(),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            UpcomingConsultations(),
            Expanded(
              flex: 5,
              child: Container(
                // color: Colors.red,
                padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 16.0),
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
                    Expanded(
                      child: Column(
                        children: [
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
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: 60.0,
                                        margin: EdgeInsets.only(right: 10.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/doctor1.png",
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.green,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFcee0f4),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {},
                                            child: Text(
                                              "data",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            color: Color(0xFF0052A6),
                                          ),
                                          MaterialButton(
                                            onPressed: () {},
                                            child: Text("data"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      // color: Colors.amber,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 5.0,
                                            height: 60.0,
                                            color: Color(0xFF00dca7),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          CircleAvatar(
                                            radius: 30.0,
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
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ],
                                              style: TextStyle(
                                                fontSize: size.width * 0.05,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFF00dca7),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
