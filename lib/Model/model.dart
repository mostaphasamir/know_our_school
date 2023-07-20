class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudent;
  final String numberOfTeachers;

  const SchoolModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudent,
    required this.numberOfTeachers,
  });

  factory SchoolModel.fromJson(Map<String, dynamic> json) {
    return SchoolModel(
      schoolName: json['School Name'],
      schoolAddress: json['School Address'],
      numberOfStudent: json['Number of Students'],
      numberOfTeachers: json['Number of Teachers'],
    );
  }
}