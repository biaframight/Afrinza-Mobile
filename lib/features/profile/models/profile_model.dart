class ProfileModel {
  final String id;
  final String? fullName;
  final String? phone;
  final String? country;
  final String? avatarUrl;

  ProfileModel({
    required this.id,
    this.fullName,
    this.phone,
    this.country,
    this.avatarUrl,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      fullName: json['full_name'],
      phone: json['phone'],
      country: json['country'],
      avatarUrl: json['avatar_url'],
    );
  }
}