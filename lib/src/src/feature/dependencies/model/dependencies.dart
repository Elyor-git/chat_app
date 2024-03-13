import 'package:shared_preferences/shared_preferences.dart';

import '../../authoration/data/authoration_repository.dart';
import '../../main/data/main_repository.dart';

base class Dependencies {
  Dependencies();

  late final SharedPreferences sharedPreferences;

  late final IAuthorationRepository authorationRepository;

  late final IMainRepository mainRepository;
}

final class MutableDependencies implements Dependencies {
  MutableDependencies({
    required this.sharedPreferences,
    required this.authorationRepository,
    required this.mainRepository,
  });

  @override
  IAuthorationRepository authorationRepository;

  @override
  IMainRepository mainRepository;

  @override
  SharedPreferences sharedPreferences;
}
