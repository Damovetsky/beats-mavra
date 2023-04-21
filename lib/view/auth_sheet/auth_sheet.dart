import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/helper/sheet_helper.dart';
import '../../core/reg_exp.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../core/ui/kit/loader.dart';
import '../../core/ui/kit/snackbar.dart';
import '../../core/ui/text_styles.dart';
import 'cubit/cubit.dart';

class SigningState extends InheritedNotifier<ValueNotifier<bool>> {
  const SigningState({
    super.key,
    super.notifier,
    required super.child,
  });

  static ValueNotifier<bool> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SigningState>()!
        .notifier!;
  }
}

class AuthSheet extends StatefulWidget {
  const AuthSheet({super.key});

  static show(BuildContext context) async {
    BottomSheetHelper.show(
      context,
      (context, padding) => const AuthSheet(),
      isScrollControlled: true,
    );
  }

  @override
  State<AuthSheet> createState() => _AuthSheetState();
}

class _AuthSheetState extends State<AuthSheet> {
  final _isSigningIn = ValueNotifier(true);

  final _emailController = TextEditingController();
  final _nicknameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AuthCubit>(),
      child: Form(
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (value) {
                Navigator.pop(context);
              },
              fieldFailure: (value) {
                Form.of(context).reset();
              },
              commonFailure: (value) {
                unawaited(showSnackbar(
                  context,
                  title: value.title,
                  message: value.message,
                  position: FlushbarPosition.TOP,
                ));
              },
            );
          },
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.4,
              maxHeight: MediaQuery.of(context).size.height * 0.9,
            ),
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: screenHorizontalMargin,
                  right: screenHorizontalMargin,
                  top: screenTopScrollPadding,
                  bottom: screenBottomScrollPadding,
                ),
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: SigningState(
                    notifier: _isSigningIn,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Pulse(
                          preferences: const AnimationPreferences(
                            autoPlay: AnimationPlayStates.Loop,
                            duration: Duration(milliseconds: 300),
                            offset: Duration(milliseconds: 200),
                            magnitude: 0.3,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 32, bottom: 64, left: 32, right: 32),
                            child: Image.asset(
                              'assets/images/beats.png',
                            ),
                          ),
                        ),
                        _EmailTextField(controller: _emailController),
                        _NicknameTextField(controller: _nicknameController),
                        _PasswordTextField(controller: _passwordController),
                        const SizedBox(height: 8),
                        _SubmitButton(
                          emailController: _emailController,
                          nicknameController: _nicknameController,
                          passwordController: _passwordController,
                        ),
                        _AlternativeSigning(),
                        _SwitchScreenText(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SwitchScreenText extends StatefulWidget {
  @override
  State<_SwitchScreenText> createState() => _SwitchScreenTextState();
}

class _SwitchScreenTextState extends State<_SwitchScreenText> {
  @override
  Widget build(BuildContext context) {
    return BouncingGestureDetector(
      onTap: () {
        SigningState.of(context).value = !SigningState.of(context).value;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: RichText(
          text: TextSpan(
            style: currentTextTheme(context).bodyLarge,
            children: [
              TextSpan(
                text: SigningState.of(context).value
                    ? 'auth_not_registered'.tr()
                    : 'auth_already_registered'.tr(),
                style: TextStyle(
                  color: currentColorScheme(context).onBackground,
                ),
              ),
              TextSpan(
                text: 'auth_change_screen'.tr(),
                style: TextStyle(
                  color: currentColorScheme(context).primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController nicknameController;
  final TextEditingController passwordController;

  const _SubmitButton({
    required this.emailController,
    required this.nicknameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.mapOrNull(buttonLoading: (value) => false) ?? true
              ? () {
                  FocusManager.instance.primaryFocus?.unfocus();

                  if (Form.of(context).validate()) {
                    if (SigningState.of(context).value) {
                      context.read<AuthCubit>().signIn(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                    } else {
                      context.read<AuthCubit>().signUp(
                            email: emailController.text,
                            nickname: nicknameController.text,
                            password: passwordController.text,
                          );
                    }
                  }
                }
              : null,
          style: FilledButton.styleFrom(
            minimumSize: const Size(double.maxFinite, 52),
          ),
          child: state.maybeWhen(
            orElse: () => Text(
              SigningState.of(context).value
                  ? 'auth_sign_in'.tr()
                  : 'auth_sign_up'.tr(),
              style: currentTextTheme(context).bodyLarge?.copyWith(
                    color: currentColorScheme(context).onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            buttonLoading: () => const Center(
              child: AppLoader(),
            ),
          ),
        );
      },
    );
  }
}

class _EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const _EmailTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (contex, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextFormField(
            key: const ValueKey('email'),
            controller: controller,
            validator: (text) {
              if (text == null || !emailRegExp.hasMatch(text)) {
                return 'auth_email_validator'.tr();
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'email'.tr(),
              errorText:
                  state.mapOrNull(fieldFailure: (value) => value.emailError),
            ),
          ),
        );
      },
    );
  }
}

class _NicknameTextField extends StatelessWidget {
  final TextEditingController controller;

  const _NicknameTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SizeTransition(
                axisAlignment: 1,
                sizeFactor: animation.drive(
                  CurveTween(curve: Curves.easeInOut),
                ),
                child: child,
              ),
            );
          },
          child: !SigningState.of(context).value
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    key: const ValueKey('username'),
                    controller: controller,
                    validator: (text) {
                      if (text == null || text.length < 4) {
                        return 'Please enter at least 4 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      //...
                    },
                    decoration: InputDecoration(
                      labelText: 'username'.tr(),
                      errorText: state.mapOrNull(
                          fieldFailure: (value) => value.nicknameError),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  const _PasswordTextField({required this.controller});

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextFormField(
            key: const ValueKey('password'),
            controller: widget.controller,
            validator: (text) {
              if (text == null || text.length < 6) {
                return 'auth_password_validator'.tr();
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'password'.tr(),
              errorText:
                  state.mapOrNull(fieldFailure: (value) => value.passwordError),
              suffixIcon: BouncingGestureDetector(
                child: _obscurePassword
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
                onTap: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
            obscureText: _obscurePassword,
          ),
        );
      },
    );
  }
}

class _AlternativeSigning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation.drive(CurveTween(curve: Curves.easeInOut)),
            child: child,
          ),
        );
      },
      child: SigningState.of(context).value
          ? Column(
              children: [
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(
                      child: Divider(thickness: 0.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Text('auth_continue_with'.tr()),
                    ),
                    const Expanded(
                      child: Divider(thickness: 0.5),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _LogoCard(
                          logo: 'assets/images/logos/google-icon.svg',
                          size: 32,
                          loading:
                              state.mapOrNull(googleLoading: (value) => true) ??
                                  false,
                          onTap: () {
                            context.read<AuthCubit>().signInWithGoogle();
                          },
                        ),
                        // const SizedBox(width: 32),
                        // _LogoCard(
                        //   logo: 'assets/images/logos/apple-logo.svg',
                        //   size: 36,
                        //   loading: state.mapOrNull(appleLoading: (value) => true) ?? false,
                        //   onTap: () {
                        //     context.read<AuthCubit>().signInWithApple();
                        //   },
                        // ),
                      ],
                    );
                  },
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class _LogoCard extends StatelessWidget {
  final String logo;
  final double size;
  final bool loading;
  final VoidCallback onTap;

  const _LogoCard({
    required this.logo,
    required this.size,
    this.loading = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: OutlinedButton(
        onPressed: !loading ? onTap : null,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: currentColorScheme(context).outlineVariant,
          ),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: loading
              ? const AppLoader()
              : SvgPicture.asset(logo, height: size),
        ),
      ),
    );
  }
}
