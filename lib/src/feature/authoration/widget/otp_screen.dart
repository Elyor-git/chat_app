import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

import '../../../common/style/app_color.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../../main/widget/main_screen.dart';
import '../bloc/authoration_bloc/authoration_bloc.dart';

/// {@template otp_screen}
/// OtpScreen widget.
/// {@endtemplate}
class OtpScreen extends StatefulWidget {
  /// {@macro otp_screen}
  const OtpScreen({
    required this.verificationId,
    super.key,
  });

  final String verificationId;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

/// State for widget OtpScreen.
class _OtpScreenState extends State<OtpScreen> {
  String smsCode = '';

  late final AuthBloc bloc;

  void otpVerification() {
    bloc.add(Auth$SignInEvent(id: widget.verificationId, smsCode: smsCode));
  }

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    bloc = AuthBloc(
      repository: DependenciesScope.of(context).authorationRepository,
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) => BlocProvider<AuthBloc>.value(
        value: bloc,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    submittedPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(234, 239, 243, 1),
                      ),
                    ),
                    showCursor: true,
                    onCompleted: (pin) {
                      smsCode = pin;
                    },
                  ),
                  const SizedBox(height: 10),
                  FilledButton(
                    onPressed: otpVerification,
                    child: BlocConsumer<AuthBloc, AuthState>(
                        bloc: bloc,
                        listener: (context, state) {
                          if (state is Auth$SignInSuccessState) {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MainScreen()),
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
                            return const Text('Verify SMS');
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
