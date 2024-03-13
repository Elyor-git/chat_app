import 'package:flutter/material.dart';

import '../../feature/authoration/widget/signin_screen.dart';
import '../../feature/dependencies/model/dependencies.dart';
import '../../feature/dependencies/widget/dependencies_scope.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({
    required this.dependencies,
    super.key,
  });

  final Dependencies dependencies;

  void run() => runApp(this);

  @override
  Widget build(BuildContext context) => DependenciesScope(
        dependencies: dependencies,
        child: MaterialApp(
          title: 'Chat App G8',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey),
          home: const SignInScreen(),
        ),
      );
}
