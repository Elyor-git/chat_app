class UserModel {
  const UserModel({
    required this.id,
    required this.displayName,
    required this.avatarImage,
    required this.phoneNumber,
  });

  final String id;
  final String? displayName;
  final String? avatarImage;
  final String? phoneNumber;

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        id: (json['id'] as String?)!,
        displayName: (json['displayName'] as String?)!,
        avatarImage: (json['avatarImage'] as String?)!,
        phoneNumber: (json['phoneNumber'] as String?)!,
      );

  Map<String, Object?> toJson() => {
        'id': id,
        'displayName': displayName,
        'avatarImage': avatarImage,
        'phoneNumber': phoneNumber,
      };
}
