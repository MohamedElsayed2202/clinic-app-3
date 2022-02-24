class Employees {
  String? firstName;
  String? lastName;
  int? nationalId;
  String? workType;
  List<String>? workingHours;
  List<String>? workingDays;

  Employees(
      {this.firstName,
      this.lastName,
      this.nationalId,
      this.workType,
      this.workingHours,
      this.workingDays});

  factory Employees.fromJson(Map<String, dynamic> doc) => Employees(
      firstName: doc['firstName'],
      lastName: doc['lastName'],
      nationalId: doc['nationalId'],
      workType: doc['workType'],
      workingHours: doc['workingHours'],
      workingDays: doc['workingDays']);
}
