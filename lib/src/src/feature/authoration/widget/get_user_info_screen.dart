import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/style/app_color.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../../main/widget/main_screen.dart';
import '../bloc/user_data_bloc/user_info_bloc.dart';

/// {@template get_user_info_screen}
/// GetUserInfoScreen widget.
/// {@endtemplate}
class GetUserInfoScreen extends StatefulWidget {
  /// {@macro get_user_info_screen}
  const GetUserInfoScreen({super.key});

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.

  static _GetUserInfoScreenState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_GetUserInfoScreenState>();

  @override
  State<GetUserInfoScreen> createState() => _GetUserInfoScreenState();
}

/// State for widget GetUserInfoScreen.
class _GetUserInfoScreenState extends State<GetUserInfoScreen> {
  String? imageUrl;
  late final TextEditingController nameController;

  late final UserInfoBloc bloc;

  final formKey = GlobalKey<FormState>();

  Future<void> showPickerDialog() async {
    final result = await showDialog<File?>(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        content: const Text('Choose your option'),
        actions: [
          TextButton(
            onPressed: () => pickImage(ImageSource.gallery),
            child: const Text('Gallery'),
          ),
          TextButton(
            onPressed: () => pickImage(ImageSource.camera),
            child: const Text('Camera'),
          ),
        ],
      ),
    );

    if (result != null) {
      final fileName = result.path.split('/').last;
      final byteData = await result.readAsBytes();

      bloc.add(
        UserInfoEvent.upload(
          fileName: fileName,
          imageByteData: byteData,
        ),
      );
    }
  }

  Future<void> pickImage(ImageSource sourse) async {
    final xfile = await ImagePicker().pickImage(source: sourse);

    if (xfile != null) {
      final file = File(xfile.path);

      if (context.mounted) {
        Navigator.pop<File>(context, file);
      }
      return;
    }

    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  void saveData() {
    if (formKey.currentState?.validate() ?? false) {
      if (imageUrl != null) {
        bloc.add(
          UserInfoEvent.save(
            displayName: nameController.text.trim(),
            avatarImageUrl: imageUrl!,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please pick image!'),
          ),
        );
      }
    }
  }

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    bloc = UserInfoBloc(
      repository: DependenciesScope.of(context).authorationRepository,
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    bloc.close();
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) => BlocProvider<UserInfoBloc>.value(
        value: bloc,
        child: Scaffold(
          body: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<UserInfoBloc, UserInfoState>(
                  bloc: bloc,
                  builder: (context, state) {
                    return CircleAvatar(
                      backgroundColor: AppColor.white,
                      radius: 70,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(70)),
                        child: SizedBox.expand(
                          child: GestureDetector(
                            onTap: showPickerDialog,
                            child: imageUrl != null
                                ? CachedNetworkImage(
                                    imageUrl: imageUrl!,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => const SizedBox.shrink(),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  )
                                : const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: ColoredBox(
                                      color: AppColor.red,
                                      child: SizedBox.expand(),
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: AppColor.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        validator: (value) => switch (value) {
                          final String a when a.isEmpty => 'Please enter your name',
                          final String a when a.length < 3 => 'Name must be longer then three letters',
                          _ => null,
                        },
                        decoration: const InputDecoration(
                          errorMaxLines: 2,
                          hintText: 'Enter your name',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FilledButton(
                  onPressed: saveData,
                  child: BlocConsumer<UserInfoBloc, UserInfoState>(
                    bloc: bloc,
                    listener: (context, state) => switch (state) {
                      InitialUserState() => null,
                      LoadingUserState() => null,
                      ErrorUserState state => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                            backgroundColor: AppColor.red,
                          ),
                        ),
                      ImageUploadedUserState state => imageUrl = state.imageUrl,
                      SaveUserInfoState() => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                          ModalRoute.withName('/'),
                        ),
                    },
                    builder: (context, state) {
                      if (state is LoadingUserState) {
                        return const SizedBox.square(
                          dimension: 50,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: RepaintBoundary(
                              child: CircularProgressIndicator(
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const Text('Save');
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
