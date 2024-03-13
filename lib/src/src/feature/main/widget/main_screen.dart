import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/main_bloc.dart';

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
  late final MainBloc bloc;

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    bloc = MainBloc(
      repository: DependenciesScope.of(context).mainRepository,
      authorationRepository: DependenciesScope.of(context).authorationRepository,
    )..add(const MainEvent.getUsers());
  }

  @override
  void didUpdateWidget(MainScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    DependenciesScope.of(context).sharedPreferences.setBool('authoration', true);
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Main'),
        ),
        body: BlocConsumer<MainBloc, MainState>(
          bloc: bloc,
          listener: (context, state) {},
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loading: (value) => const Center(
              child: CircularProgressIndicator(),
            ),
            usersData: (value) => RefreshIndicator(
              onRefresh: () async => bloc.add(const MainEvent.getUsers()),
              child: ListView.separated(
                itemCount: value.users.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: CachedNetworkImageProvider(value.users[index].avatarImage!),
                  ),
                  title: Text(value.users[index].displayName!),
                  subtitle: Text(value.users[index].phoneNumber!),
                  onTap: () {},
                ),
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
