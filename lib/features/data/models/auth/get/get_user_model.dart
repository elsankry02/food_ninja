class GetUserModel {
  final int id;
  final String? username;
  final String? name;
  final String? avatarUrl;
  final String? blurhash;
  final String? phone;
  final String? email;
  final bool? isCompleteProfile;

  GetUserModel({
    required this.id,
    required this.username,
    required this.name,
    required this.avatarUrl,
    required this.blurhash,
    required this.phone,
    required this.email,

    required this.isCompleteProfile,
  });

  factory GetUserModel.fromJson(Map<String, dynamic> json) => GetUserModel(
    id: json["id"],
    username: json["username"],
    name: json["name"],
    avatarUrl: json["avatar_url"],
    blurhash: json["blurhash"],
    phone: json["phone"],
    email: json["email"],
    isCompleteProfile: json["is_complete_profile"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "name": name,
    "avatar_url": avatarUrl,
    "blurhash": blurhash,
    "phone": phone,
    "email": email,
    "is_complete_profile": isCompleteProfile,
  };
}
