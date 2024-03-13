part of 'user_info_bloc.dart';

sealed class UserInfoEvent {
  const UserInfoEvent._();

  const factory UserInfoEvent.upload({
    required String fileName,
    required Uint8List imageByteData,
  }) = UploadImageEvent;

  const factory UserInfoEvent.save({
    required String displayName,
    required String avatarImageUrl,
  }) = SaveUserDataEvent;
}

final class UploadImageEvent extends UserInfoEvent {
  const UploadImageEvent({
    required this.fileName,
    required this.imageByteData,
  }) : super._();

  final String fileName;
  final Uint8List imageByteData;
}

final class SaveUserDataEvent extends UserInfoEvent {
  const SaveUserDataEvent({
    required this.displayName,
    required this.avatarImageUrl,
  }) : super._();

  final String displayName;
  final String avatarImageUrl;
}
