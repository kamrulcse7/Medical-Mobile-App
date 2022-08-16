import 'package:medical_mobile_app/models/doctor.dart';
import 'package:medical_mobile_app/models/patient.dart';
import 'package:medical_mobile_app/models/user.dart';


final users = User(
  patients: [
    ///
    Patient(
      name: "Jessica",
      surname: "Simpson",
      gender: "Female",
      birthDate: "July 16, 1990 (30y)",
      city: "London",
      country: "United Kingdom",
      imgUrl: "jasica.jpg",
    ),
    Patient(
      name: "James",
      surname: "Robert",
      gender: "Male",
      birthDate: "July 16, 1989",
      city: "London",
      country: "United Kingdom",
      imgUrl: "james.jpg",
    ),
    Patient(
      name: "Jennifer",
      surname: "Simpson",
      gender: "Female",
      birthDate: "July 16, 1980",
      city: "London",
      country: "United Kingdom",
      imgUrl: "jennifer.jpg",
    ),
    Patient(
      name: "Michael",
      surname: "John",
      gender: "Male",
      birthDate: "July 16, 1978",
      city: "London",
      country: "United Kingdom",
      imgUrl: "michael.jpg",
    ),
    Patient(
      name: "James",
      surname: "Robert",
      gender: "Male",
      birthDate: "July 16, 1989",
      city: "London",
      country: "United Kingdom",
      imgUrl: "james.jpg",
    ),
    Patient(
      name: "Jennifer",
      surname: "Simpson",
      gender: "Female",
      birthDate: "July 16, 1980",
      city: "London",
      country: "United Kingdom",
      imgUrl: "jennifer.jpg",
    ),
  ],

  /// doctors
  doctors: [
    Doctor(
        name: "Foujia Sharmin",
        role: "Video Consultatino",
        imgUrl: "foujia_sharmin.jpg"),
    Doctor(
        name: "Micahael Simpson",
        role: "Video Consultatino",
        imgUrl: "michael_simpson.jpg"),
    Doctor(
        name: "Kate Brown",
        role: "Video Consultatino",
        imgUrl: "kate_brown.jpg"),
    Doctor(
        name: "Anna Kowalsky",
        role: "Video Consultatino",
        imgUrl: "anna_kowalsky.jpg"),
  ],
);
