class SendMessageModel {
  const SendMessageModel({
    required this.message,
    required this.userId,
    required this.createdAt,
  });

  final String message;
  final String userId;
  final String createdAt;

  factory SendMessageModel.fromJson(Map<String, Object?> json) => SendMessageModel(
        message: (json['message'] as String?)!,
        userId: (json['user_id'] as String?)!,
        createdAt: (json['created_at'] as String?)!,
      );

  Map<String, Object?> toJson() => {
        'message': message,
        'user_id': userId,
        'created_at': createdAt,
      };
}

class RecieveMessageModel {
  const RecieveMessageModel({
    required this.message,
    required this.isItMe,
    required this.createdAt,
  });

  final String message;
  final bool isItMe;
  final DateTime createdAt;

  factory RecieveMessageModel.fromJson(Map<String, Object?> json) => RecieveMessageModel(
        message: (json['message'] as String?)!,
        isItMe: (json['is_it_me'] as bool?)!,
        createdAt: DateTime.parse((json['created_at'] as String?)!),
      );

  Map<String, Object?> toJson() => {
        'message': message,
        'is_it_me': isItMe,
        'created_at': createdAt.toUtc().toIso8601String(),
      };
}
