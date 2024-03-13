import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../common/style/app_color.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/authoration_bloc/authoration_bloc.dart';
import 'otp_screen.dart';

/// {@template sign_in_page}
/// SignInScreen widget.
/// {@endtemplate}
class SignInScreen extends StatefulWidget {
  /// {@macro sign_in_page}
  const SignInScreen({super.key});

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  static _SignInScreenState? maybeOf(BuildContext context) => context.findAncestorStateOfType<_SignInScreenState>();

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

/// State for widget SignInScreen.
class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController phoneController;

  late final AuthBloc bloc;

  void signIn() {
    bloc.add(
      Auth$SendSmsCodeEvent(
        phoneController.text.trim().replaceAll('-', ' ').replaceAll(' ', ''),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();

    bloc = AuthBloc(
      repository: DependenciesScope.of(context).authorationRepository,
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider<AuthBloc>.value(
        value: bloc,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '+### ## ###-##-##',
                            filter: {'#': RegExp(r'[0-9]')},
                            type: MaskAutoCompletionType.lazy,
                          ),
                        ],
                        decoration: const InputDecoration(
                          errorMaxLines: 2,
                          hintText: 'Enter phone number',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FilledButton(
                  onPressed: signIn,
                  child: BlocListener<AuthBloc, AuthState>(
                    bloc: bloc,
                    listener: (context, state) {
                      if (state is Auth$SuccessState) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(
                              verificationId: state.verificationId,
                            ),
                          ),
                        );
                      }

                      if (state is Auth$ErrorState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                          ),
                        );
                      }
                    },
                    child: BlocBuilder<AuthBloc, AuthState>(
                      bloc: bloc,
                      builder: (context, state) {
                        if (state is Auth$LoadingState) {
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
                          return const Text('Sign In');
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
