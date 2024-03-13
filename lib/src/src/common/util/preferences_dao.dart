import 'package:shared_preferences/shared_preferences.dart';

abstract base class PreferencesDao {
  const PreferencesDao({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  PreferencesEntry<bool> boolEntry(String key) => _PreferencesEntry<bool>(
        sharedPreferences: _sharedPreferences,
        key: key,
      );

  PreferencesEntry<int> intEntry(String key) => _PreferencesEntry<int>(
        sharedPreferences: _sharedPreferences,
        key: key,
      );

  PreferencesEntry<double> doubleEntry(String key) => _PreferencesEntry<double>(
        sharedPreferences: _sharedPreferences,
        key: key,
      );

  PreferencesEntry<String> stringEntry(String key) => _PreferencesEntry<String>(
        sharedPreferences: _sharedPreferences,
        key: key,
      );

  PreferencesEntry<Iterable<String>> iterableStringEntry(String key) => _PreferencesEntry<Iterable<String>>(
        sharedPreferences: _sharedPreferences,
        key: key,
      );
}

abstract base class PreferencesEntry<T extends Object> {
  const PreferencesEntry();

  String get key;

  T? read();

  Future<void> set(T value);

  Future<void> remove();
}

final class _PreferencesEntry<T extends Object> extends PreferencesEntry<T> {
  _PreferencesEntry({
    required SharedPreferences sharedPreferences,
    required this.key,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  final String key;

  @override
  T? read() {
    final value = _sharedPreferences.get(key);

    return switch (value) {
      null => null,
      T v => v,
      _ => throw Exception(
          'The value of $key is not of type ${T.runtimeType}',
        ),
    };
  }

  @override
  Future<void> remove() => _sharedPreferences.remove(key);

  @override
  Future<void> set(T value) => switch (value) {
        final int v => _sharedPreferences.setInt(key, v),
        final double v => _sharedPreferences.setDouble(key, v),
        final bool v => _sharedPreferences.setBool(key, v),
        final String v => _sharedPreferences.setString(key, v),
        final Iterable<String> v => _sharedPreferences.setStringList(
            key,
            v.toList(),
          ),
        _ => throw Exception(
            '$T is not a valid type for a preferences entry value.',
          ),
      };
}
