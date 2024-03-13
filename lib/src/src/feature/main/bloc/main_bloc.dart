import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/util/logger.dart';
import '../../authoration/data/authoration_repository.dart';
import '../../authoration/model/user_model.dart';
import '../data/main_repository.dart';
import '../model/messages_model.dart';

part 'main_bloc.freezed.dart';

/// Events
@freezed
sealed class MainEvent with _$MainEvent {
  const MainEvent._();

  const factory MainEvent.getUsers() = GetUsersMainEvent;

  const factory MainEvent.getMessages(String id) = GetMessagesMainEvent;

  const factory MainEvent.sendMessage(SendMessageModel message) = SendMessageMainEvent;
}

/// States
@freezed
sealed class MainState with _$MainState {
  const MainState._();

  const factory MainState.inital() = InitailMainState;

  const factory MainState.error(String message) = ErrorMainState;

  const factory MainState.loading() = LoadingMainState;

  const factory MainState.usersData(List<UserModel> users) = UsersDataMainState;

  const factory MainState.messages(List<RecieveMessageModel> messages) = MessagesMainState;
}

/// BLoC
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({
    required IMainRepository repository,
    required IAuthorationRepository authorationRepository,
  })  :
        _authorationRepository = authorationRepository,
        super(const MainState.inital()) {
    on<MainEvent>(
      (event, emit) => event.map(
        getUsers: (value) => _getUsers(value, emit),
        getMessages: (value) => _getMessages(value, emit),
        sendMessage: (value) => _sendMessage(value, emit),
      ),
    );
  }

  final IAuthorationRepository _authorationRepository;

  Future<void> _getUsers(GetUsersMainEvent event, Emitter<MainState> emit) async {
    try {
      emit(const MainState.loading());

      final users = await _authorationRepository.getUsers();
      final me = await _authorationRepository.getUser();

      if (me == null) {
        emit(const MainState.error('User not authorized'));
      } else {
        final result = users.where((e) => e.id != me.id).toList();

        emit(MainState.usersData(result));
      }
    } catch (e, stackTrace) {
      fatal(e, stackTrace);
      emit(MainState.error(e.toString()));
    }
  }

  Future<void> _getMessages(GetMessagesMainEvent event, Emitter<MainState> emit) async {}

  Future<void> _sendMessage(SendMessageMainEvent event, Emitter<MainState> emit) async {}
}
