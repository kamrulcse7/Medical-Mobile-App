import 'doctor.dart';
import 'patient.dart';

class User {
  final List<Patient>? patients;
  final List<Doctor>? doctors;
  User({
    this.patients,
    this.doctors,
  });
}
