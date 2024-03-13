import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/util/logger.dart';
import '../../data/authoration_repository.dart';

part 'user_info_event.dart';
part 'user_info_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  UserInfoBloc({required IAuthorationRepository repository})
      : _repository = repository,
        super(const InitialUserState()) {
    on<UserInfoEvent>(
      (event, emit) => switch (event) {
        UploadImageEvent event => _uploadImage(event, emit),
        SaveUserDataEvent event => _save(event, emit),
      },
    );
  }

  final IAuthorationRepository _repository;

  Future<void> _uploadImage(UploadImageEvent event, Emitter<UserInfoState> emit) async {
    try {
      emit(const UserInfoState.loading());

      final avatarImageUrl = await _repository.uploadImage(
        fileName: event.fileName,
        imageByteData: event.imageByteData,
      );

      emit(UserInfoState.imageUploaded(avatarImageUrl));
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      emit(const UserInfoState.error('Something went wrong'));
    }
  }

  Future<void> _save(SaveUserDataEvent event, Emitter<UserInfoState> emit) async {
    try {
      emit(const UserInfoState.loading());

      await _repository.updateUser(
        displayName: event.displayName,
        avatarImageUrl: event.avatarImageUrl,
      );

      emit(const UserInfoState.saved());
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      emit(const UserInfoState.error('Something went wrong'));
    }
  }
}
