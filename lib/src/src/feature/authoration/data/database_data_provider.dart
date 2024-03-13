import 'dart:convert';

import '../../../common/util/preferences_dao.dart';
import '../model/user_model.dart';

abstract interface class IDatabaseDataProvider {
  Future<UserModel?> getUser();

  Future<void> saveUser(UserModel user);
}

final class DatabaseDataProviderImpl extends PreferencesDao implements IDatabaseDataProvider {
  DatabaseDataProviderImpl({required super.sharedPreferences});

  PreferencesEntry<String> get _getMe => stringEntry('user.me');

  @override
  Future<void> saveUser(UserModel user) async {
    await _getMe.set(jsonEncode(user.toJson()));
  }

  @override
  Future<UserModel?> getUser() async {
    final userData = _getMe.read();

    if (userData == null) return null;

    return UserModel.fromJson(
      const JsonDecoder().cast<String, Map<String, Object?>>().convert(userData),
    );
  }
}
