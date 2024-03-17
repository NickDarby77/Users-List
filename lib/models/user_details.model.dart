class UserDetailsModel {
  final String name;
  final String company;
  final String location;

  UserDetailsModel({
    required this.name,
    required this.company,
    required this.location,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      name: json['name'] ?? '',
      company: json['company'] ?? '',
      location: json['location'] ?? '',
    );
  }
}
