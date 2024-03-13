import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// {@template main}
/// MainScreen widget.
/// {@endtemplate}
class MainScreen extends StatefulWidget {
  /// {@macro main}
  const MainScreen({super.key});

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _MainScreenState? maybeOf(BuildContext context) => context.findAncestorStateOfType<_MainScreenState>();

  @override
  State<MainScreen> createState() => _MainScreenState();
}

/// State for widget MainScreen.
class _MainScreenState extends State<MainScreen> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(MainScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Main'),
      ),
    );
  }
}
