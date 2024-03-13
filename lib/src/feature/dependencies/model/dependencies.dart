import 'package:shared_preferences/shared_preferences.dart';

import '../../authoration/data/authoration_repository.dart';

base class Dependencies {
  Dependencies();

  late final SharedPreferences sharedPreferences;

  late final IAuthorationRepository authorationRepository;
}
