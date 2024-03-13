class UserModel {
  const UserModel({
    required this.id,
    required this.displayName,
    required this.avatarImage,
  });

  final String id;
  final String? displayName;
  final String? avatarImage;
}
