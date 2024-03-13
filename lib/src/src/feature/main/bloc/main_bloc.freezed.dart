// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String id) getMessages,
    required TResult Function(SendMessageModel message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String id)? getMessages,
    TResult? Function(SendMessageModel message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String id)? getMessages,
    TResult Function(SendMessageModel message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersMainEvent value) getUsers,
    required TResult Function(GetMessagesMainEvent value) getMessages,
    required TResult Function(SendMessageMainEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersMainEvent value)? getUsers,
    TResult? Function(GetMessagesMainEvent value)? getMessages,
    TResult? Function(SendMessageMainEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersMainEvent value)? getUsers,
    TResult Function(GetMessagesMainEvent value)? getMessages,
    TResult Function(SendMessageMainEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUsersMainEventImplCopyWith<$Res> {
  factory _$$GetUsersMainEventImplCopyWith(_$GetUsersMainEventImpl value,
          $Res Function(_$GetUsersMainEventImpl) then) =
      __$$GetUsersMainEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUsersMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetUsersMainEventImpl>
    implements _$$GetUsersMainEventImplCopyWith<$Res> {
  __$$GetUsersMainEventImplCopyWithImpl(_$GetUsersMainEventImpl _value,
      $Res Function(_$GetUsersMainEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUsersMainEventImpl extends GetUsersMainEvent {
  const _$GetUsersMainEventImpl() : super._();

  @override
  String toString() {
    return 'MainEvent.getUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsersMainEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String id) getMessages,
    required TResult Function(SendMessageModel message) sendMessage,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String id)? getMessages,
    TResult? Function(SendMessageModel message)? sendMessage,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String id)? getMessages,
    TResult Function(SendMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersMainEvent value) getUsers,
    required TResult Function(GetMessagesMainEvent value) getMessages,
    required TResult Function(SendMessageMainEvent value) sendMessage,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersMainEvent value)? getUsers,
    TResult? Function(GetMessagesMainEvent value)? getMessages,
    TResult? Function(SendMessageMainEvent value)? sendMessage,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersMainEvent value)? getUsers,
    TResult Function(GetMessagesMainEvent value)? getMessages,
    TResult Function(SendMessageMainEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsersMainEvent extends MainEvent {
  const factory GetUsersMainEvent() = _$GetUsersMainEventImpl;
  const GetUsersMainEvent._() : super._();
}

/// @nodoc
abstract class _$$GetMessagesMainEventImplCopyWith<$Res> {
  factory _$$GetMessagesMainEventImplCopyWith(_$GetMessagesMainEventImpl value,
          $Res Function(_$GetMessagesMainEventImpl) then) =
      __$$GetMessagesMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetMessagesMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetMessagesMainEventImpl>
    implements _$$GetMessagesMainEventImplCopyWith<$Res> {
  __$$GetMessagesMainEventImplCopyWithImpl(_$GetMessagesMainEventImpl _value,
      $Res Function(_$GetMessagesMainEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetMessagesMainEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMessagesMainEventImpl extends GetMessagesMainEvent {
  const _$GetMessagesMainEventImpl(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'MainEvent.getMessages(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesMainEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesMainEventImplCopyWith<_$GetMessagesMainEventImpl>
      get copyWith =>
          __$$GetMessagesMainEventImplCopyWithImpl<_$GetMessagesMainEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String id) getMessages,
    required TResult Function(SendMessageModel message) sendMessage,
  }) {
    return getMessages(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String id)? getMessages,
    TResult? Function(SendMessageModel message)? sendMessage,
  }) {
    return getMessages?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String id)? getMessages,
    TResult Function(SendMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersMainEvent value) getUsers,
    required TResult Function(GetMessagesMainEvent value) getMessages,
    required TResult Function(SendMessageMainEvent value) sendMessage,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersMainEvent value)? getUsers,
    TResult? Function(GetMessagesMainEvent value)? getMessages,
    TResult? Function(SendMessageMainEvent value)? sendMessage,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersMainEvent value)? getUsers,
    TResult Function(GetMessagesMainEvent value)? getMessages,
    TResult Function(SendMessageMainEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class GetMessagesMainEvent extends MainEvent {
  const factory GetMessagesMainEvent(final String id) =
      _$GetMessagesMainEventImpl;
  const GetMessagesMainEvent._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$$GetMessagesMainEventImplCopyWith<_$GetMessagesMainEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageMainEventImplCopyWith<$Res> {
  factory _$$SendMessageMainEventImplCopyWith(_$SendMessageMainEventImpl value,
          $Res Function(_$SendMessageMainEventImpl) then) =
      __$$SendMessageMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageModel message});
}

/// @nodoc
class __$$SendMessageMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SendMessageMainEventImpl>
    implements _$$SendMessageMainEventImplCopyWith<$Res> {
  __$$SendMessageMainEventImplCopyWithImpl(_$SendMessageMainEventImpl _value,
      $Res Function(_$SendMessageMainEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageMainEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SendMessageModel,
    ));
  }
}

/// @nodoc

class _$SendMessageMainEventImpl extends SendMessageMainEvent {
  const _$SendMessageMainEventImpl(this.message) : super._();

  @override
  final SendMessageModel message;

  @override
  String toString() {
    return 'MainEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageMainEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageMainEventImplCopyWith<_$SendMessageMainEventImpl>
      get copyWith =>
          __$$SendMessageMainEventImplCopyWithImpl<_$SendMessageMainEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String id) getMessages,
    required TResult Function(SendMessageModel message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String id)? getMessages,
    TResult? Function(SendMessageModel message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String id)? getMessages,
    TResult Function(SendMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersMainEvent value) getUsers,
    required TResult Function(GetMessagesMainEvent value) getMessages,
    required TResult Function(SendMessageMainEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersMainEvent value)? getUsers,
    TResult? Function(GetMessagesMainEvent value)? getMessages,
    TResult? Function(SendMessageMainEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersMainEvent value)? getUsers,
    TResult Function(GetMessagesMainEvent value)? getMessages,
    TResult Function(SendMessageMainEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageMainEvent extends MainEvent {
  const factory SendMessageMainEvent(final SendMessageModel message) =
      _$SendMessageMainEventImpl;
  const SendMessageMainEvent._() : super._();

  SendMessageModel get message;
  @JsonKey(ignore: true)
  _$$SendMessageMainEventImplCopyWith<_$SendMessageMainEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitailMainStateImplCopyWith<$Res> {
  factory _$$InitailMainStateImplCopyWith(_$InitailMainStateImpl value,
          $Res Function(_$InitailMainStateImpl) then) =
      __$$InitailMainStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitailMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitailMainStateImpl>
    implements _$$InitailMainStateImplCopyWith<$Res> {
  __$$InitailMainStateImplCopyWithImpl(_$InitailMainStateImpl _value,
      $Res Function(_$InitailMainStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitailMainStateImpl extends InitailMainState {
  const _$InitailMainStateImpl() : super._();

  @override
  String toString() {
    return 'MainState.inital()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitailMainStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class InitailMainState extends MainState {
  const factory InitailMainState() = _$InitailMainStateImpl;
  const InitailMainState._() : super._();
}

/// @nodoc
abstract class _$$ErrorMainStateImplCopyWith<$Res> {
  factory _$$ErrorMainStateImplCopyWith(_$ErrorMainStateImpl value,
          $Res Function(_$ErrorMainStateImpl) then) =
      __$$ErrorMainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$ErrorMainStateImpl>
    implements _$$ErrorMainStateImplCopyWith<$Res> {
  __$$ErrorMainStateImplCopyWithImpl(
      _$ErrorMainStateImpl _value, $Res Function(_$ErrorMainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorMainStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMainStateImpl extends ErrorMainState {
  const _$ErrorMainStateImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MainState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMainStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMainStateImplCopyWith<_$ErrorMainStateImpl> get copyWith =>
      __$$ErrorMainStateImplCopyWithImpl<_$ErrorMainStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMainState extends MainState {
  const factory ErrorMainState(final String message) = _$ErrorMainStateImpl;
  const ErrorMainState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorMainStateImplCopyWith<_$ErrorMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMainStateImplCopyWith<$Res> {
  factory _$$LoadingMainStateImplCopyWith(_$LoadingMainStateImpl value,
          $Res Function(_$LoadingMainStateImpl) then) =
      __$$LoadingMainStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadingMainStateImpl>
    implements _$$LoadingMainStateImplCopyWith<$Res> {
  __$$LoadingMainStateImplCopyWithImpl(_$LoadingMainStateImpl _value,
      $Res Function(_$LoadingMainStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMainStateImpl extends LoadingMainState {
  const _$LoadingMainStateImpl() : super._();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMainStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMainState extends MainState {
  const factory LoadingMainState() = _$LoadingMainStateImpl;
  const LoadingMainState._() : super._();
}

/// @nodoc
abstract class _$$UsersDataMainStateImplCopyWith<$Res> {
  factory _$$UsersDataMainStateImplCopyWith(_$UsersDataMainStateImpl value,
          $Res Function(_$UsersDataMainStateImpl) then) =
      __$$UsersDataMainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class __$$UsersDataMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$UsersDataMainStateImpl>
    implements _$$UsersDataMainStateImplCopyWith<$Res> {
  __$$UsersDataMainStateImplCopyWithImpl(_$UsersDataMainStateImpl _value,
      $Res Function(_$UsersDataMainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersDataMainStateImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$UsersDataMainStateImpl extends UsersDataMainState {
  const _$UsersDataMainStateImpl(final List<UserModel> users)
      : _users = users,
        super._();

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'MainState.usersData(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersDataMainStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersDataMainStateImplCopyWith<_$UsersDataMainStateImpl> get copyWith =>
      __$$UsersDataMainStateImplCopyWithImpl<_$UsersDataMainStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) {
    return usersData(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) {
    return usersData?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) {
    if (usersData != null) {
      return usersData(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) {
    return usersData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) {
    return usersData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) {
    if (usersData != null) {
      return usersData(this);
    }
    return orElse();
  }
}

abstract class UsersDataMainState extends MainState {
  const factory UsersDataMainState(final List<UserModel> users) =
      _$UsersDataMainStateImpl;
  const UsersDataMainState._() : super._();

  List<UserModel> get users;
  @JsonKey(ignore: true)
  _$$UsersDataMainStateImplCopyWith<_$UsersDataMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesMainStateImplCopyWith<$Res> {
  factory _$$MessagesMainStateImplCopyWith(_$MessagesMainStateImpl value,
          $Res Function(_$MessagesMainStateImpl) then) =
      __$$MessagesMainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecieveMessageModel> messages});
}

/// @nodoc
class __$$MessagesMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MessagesMainStateImpl>
    implements _$$MessagesMainStateImplCopyWith<$Res> {
  __$$MessagesMainStateImplCopyWithImpl(_$MessagesMainStateImpl _value,
      $Res Function(_$MessagesMainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesMainStateImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<RecieveMessageModel>,
    ));
  }
}

/// @nodoc

class _$MessagesMainStateImpl extends MessagesMainState {
  const _$MessagesMainStateImpl(final List<RecieveMessageModel> messages)
      : _messages = messages,
        super._();

  final List<RecieveMessageModel> _messages;
  @override
  List<RecieveMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MainState.messages(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesMainStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesMainStateImplCopyWith<_$MessagesMainStateImpl> get copyWith =>
      __$$MessagesMainStateImplCopyWithImpl<_$MessagesMainStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) usersData,
    required TResult Function(List<RecieveMessageModel> messages) messages,
  }) {
    return messages(this.messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? usersData,
    TResult? Function(List<RecieveMessageModel> messages)? messages,
  }) {
    return messages?.call(this.messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? usersData,
    TResult Function(List<RecieveMessageModel> messages)? messages,
    required TResult orElse(),
  }) {
    if (messages != null) {
      return messages(this.messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailMainState value) inital,
    required TResult Function(ErrorMainState value) error,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(UsersDataMainState value) usersData,
    required TResult Function(MessagesMainState value) messages,
  }) {
    return messages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailMainState value)? inital,
    TResult? Function(ErrorMainState value)? error,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(UsersDataMainState value)? usersData,
    TResult? Function(MessagesMainState value)? messages,
  }) {
    return messages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailMainState value)? inital,
    TResult Function(ErrorMainState value)? error,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(UsersDataMainState value)? usersData,
    TResult Function(MessagesMainState value)? messages,
    required TResult orElse(),
  }) {
    if (messages != null) {
      return messages(this);
    }
    return orElse();
  }
}

abstract class MessagesMainState extends MainState {
  const factory MessagesMainState(final List<RecieveMessageModel> messages) =
      _$MessagesMainStateImpl;
  const MessagesMainState._() : super._();

  List<RecieveMessageModel> get messages;
  @JsonKey(ignore: true)
  _$$MessagesMainStateImplCopyWith<_$MessagesMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
