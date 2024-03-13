import 'package:flutter/material.dart';

import '../model/dependencies.dart';

class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    required this.dependencies,
    required super.child,
    super.key,
  });

  final Dependencies dependencies;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// e.g. `DependenciesScope.maybeOf(context)`.
  static DependenciesScope? maybeOf(BuildContext context, {bool listen = false}) => listen
      ? context.dependOnInheritedWidgetOfExactType<DependenciesScope>()
      : (context.getElementForInheritedWidgetOfExactType<DependenciesScope>()?.widget as DependenciesScope?);

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a DependenciesScope of the exact type',
        'out_of_scope',
      );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// e.g. `DependenciesScope.of(context)`
  static Dependencies of(BuildContext context, {bool listen = false}) =>
      maybeOf(context, listen: listen)?.dependencies ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) => false;
}
