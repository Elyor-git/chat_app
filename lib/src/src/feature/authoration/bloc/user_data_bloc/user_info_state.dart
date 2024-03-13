part of 'user_info_bloc.dart';

sealed class UserInfoState {
  const UserInfoState._();

  const factory UserInfoState.initial() = InitialUserState;

  const factory UserInfoState.loading() = LoadingUserState;

  const factory UserInfoState.error(String message) = ErrorUserState;

  const factory UserInfoState.imageUploaded(String imageUrl) = ImageUploadedUserState;

  const factory UserInfoState.saved() = SaveUserInfoState;
}

final class InitialUserState extends UserInfoState {
  const InitialUserState() : super._();
}

final class LoadingUserState extends UserInfoState {
  const LoadingUserState() : super._();
}

final class ErrorUserState extends UserInfoState {
  const ErrorUserState(this.message) : super._();

  final String message;
}

final class ImageUploadedUserState extends UserInfoState {
  const ImageUploadedUserState(this.imageUrl) : super._();

  final String imageUrl;
}

final class SaveUserInfoState extends UserInfoState {
  const SaveUserInfoState() : super._();
}
