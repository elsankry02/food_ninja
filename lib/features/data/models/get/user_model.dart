class UserModel {
  String token;
  User user;
  bool registrationComplete;

  UserModel({
    required this.token,
    required this.user,
    required this.registrationComplete,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    token: json["token"],
    user: User.fromJson(json["user"]),
    registrationComplete: json["registration_complete"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user": user.toJson(),
    "registration_complete": registrationComplete,
  };
}

class User {
  int id;
  dynamic username;
  dynamic name;
  String avatarUrl;
  dynamic blurhash;
  dynamic phone;
  String email;
  String hostStatus;
  dynamic liveSessionType;
  bool isLearning;
  bool isShown;
  bool isLive;
  int fansCount;
  int postsCount;
  int pioneersCount;
  bool isCompleteProfile;
  bool isVerified;
  bool isExpert;
  DateTime createdAt;
  DateTime updatedAt;
  String socialRelation;
  String shareUrl;
  String deepLink;

  User({
    required this.id,
    required this.username,
    required this.name,
    required this.avatarUrl,
    required this.blurhash,
    required this.phone,
    required this.email,
    required this.hostStatus,
    required this.liveSessionType,
    required this.isLearning,
    required this.isShown,
    required this.isLive,
    required this.fansCount,
    required this.postsCount,
    required this.pioneersCount,
    required this.isCompleteProfile,
    required this.isVerified,
    required this.isExpert,
    required this.createdAt,
    required this.updatedAt,
    required this.socialRelation,
    required this.shareUrl,
    required this.deepLink,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    name: json["name"],
    avatarUrl: json["avatar_url"],
    blurhash: json["blurhash"],
    phone: json["phone"],
    email: json["email"],
    hostStatus: json["host_status"],
    liveSessionType: json["live_session_type"],
    isLearning: json["is_learning"],
    isShown: json["is_shown"],
    isLive: json["is_live"],
    fansCount: json["fans_count"],
    postsCount: json["posts_count"],
    pioneersCount: json["pioneers_count"],
    isCompleteProfile: json["is_complete_profile"],
    isVerified: json["is_verified"],
    isExpert: json["is_expert"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    socialRelation: json["social_relation"],
    shareUrl: json["share_url"],
    deepLink: json["deep_link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "name": name,
    "avatar_url": avatarUrl,
    "blurhash": blurhash,
    "phone": phone,
    "email": email,
    "host_status": hostStatus,
    "live_session_type": liveSessionType,
    "is_learning": isLearning,
    "is_shown": isShown,
    "is_live": isLive,
    "fans_count": fansCount,
    "posts_count": postsCount,
    "pioneers_count": pioneersCount,
    "is_complete_profile": isCompleteProfile,
    "is_verified": isVerified,
    "is_expert": isExpert,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "social_relation": socialRelation,
    "share_url": shareUrl,
    "deep_link": deepLink,
  };
}
