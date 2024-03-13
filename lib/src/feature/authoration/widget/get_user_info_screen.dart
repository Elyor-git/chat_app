import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/style/app_color.dart';
import '../../dependencies/widget/dependencies_scope.dart';
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

  void saveData() {}

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: AppColor.white,
                  radius: 35,
                  child: GestureDetector(
                    onTap: showPickerDialog,
                    child: imageUrl != null
                        ? CachedNetworkImage(
                            imageUrl: imageUrl!,
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          )
                        : const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: CircularProgressIndicator(),
                          ),
                  )),
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
                      keyboardType: TextInputType.number,
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
                  listener: (context, state) {
                    if (state is ImageUploadedUserState) {
                      
                    }
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
      );
}
