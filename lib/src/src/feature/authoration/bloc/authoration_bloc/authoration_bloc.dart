import 'package:bloc/bloc.dart';

import '../../../../common/util/logger.dart';
import '../../data/authoration_repository.dart';

part 'authoration_event.dart';
part 'authoration_state.dart';

/// BLoC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required IAuthorationRepository repository})
      : _repository = repository,
        super(const Auth$InitialState()) {
    on<AuthEvent>(
      (event, emit) => switch (event) {
        Auth$SendSmsCodeEvent event => _sendSmsCode(event, emit),
        Auth$SignInEvent event => _signIn(event, emit),
      },
    );
  }

  final IAuthorationRepository _repository;

  Future<void> _sendSmsCode(Auth$SendSmsCodeEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const Auth$LoadingState());

      final id = await _repository.signInWithPhoneNumber(event.phoneNumber);

      emit(Auth$SuccessState(id));
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      emit(const Auth$ErrorState('Something went wrong'));
    }
  }

  Future<void> _signIn(Auth$SignInEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const Auth$LoadingState());

      await _repository.otpSignIn(id: event.id, smsCode: event.smsCode);

      emit(const Auth$SignInSuccessState());
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      emit(const Auth$ErrorState('Something went wrong'));
    }
  }
}
