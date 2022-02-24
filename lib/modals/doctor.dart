class Doctor {
  String? firstName;
  String? lastName;
  int? nationalId;
  String? address;
  String? degree;
  String? specialization;
  List<String>? workingHours;
  List<String>? workingDays;

  Doctor(
      {this.firstName,
      this.lastName,
      this.nationalId,
      this.address,
      this.degree,
      this.specialization,
      this.workingHours,
      this.workingDays});

  factory Doctor.fromJson(Map<String, dynamic> doc) => Doctor(
      firstName: doc['firstName'],
      lastName: doc['lastName'],
      nationalId: doc['nationalId'],
      address: doc['address'],
      degree: doc['degree'],
      specialization: doc['specialization'],
      workingHours: doc['workingHours'],
      workingDays: doc['workingDays']);
}
