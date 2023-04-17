import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/reg_exp.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../core/ui/text_styles.dart';
import 'cubit/cubit.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isSigningIn = true;
  final _emailController = TextEditingController();

  void _trySubmit(BuildContext context) {
    final isValid = Form.of(context).validate();
    FocusScope.of(context).unfocus();

    // if (isValid ?? false) {
    //   _formKey.currentState?.save();
    //   widget.submitFn(
    //     _userEmail.trim(),
    //     _userName.trim(),
    //     _userPassword.trim(),
    //   );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt.get<AuthCubit>();
      },
      child: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return ListView(
                  padding: const EdgeInsets.only(
                    left: screenHorizontalMargin,
                    right: screenHorizontalMargin,
                    top: screenTopScrollPadding,
                    bottom: screenBottomScrollPadding,
                  ),
                  children: [
                    Pulse(
                      preferences: const AnimationPreferences(
                        autoPlay: AnimationPlayStates.Loop,
                        duration: Duration(milliseconds: 300),
                        offset: Duration(milliseconds: 200),
                        magnitude: 0.3,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 100,
                          horizontal: 50,
                        ),
                        child: Image.asset(
                          'assets/images/beats.png',
                        ),
                      ),
                    ),
                    Form(
                      child: Column(
                        children: [
                          //Email textfield
                          _EmailTextField(_emailController),

                          //Username
                          _UsernameTextField(isSigningIn: _isSigningIn),

                          //Password textfield
                          const _PasswordTextField(),

                          const SizedBox(height: 8),

                          //Sibmit button
                          Builder(
                            builder: (ctx) {
                              return FilledButton(
                                onPressed: _emailController.text.isEmpty
                                    ? null
                                    : () {
                                        _trySubmit(ctx);
                                      },
                                style: FilledButton.styleFrom(
                                  minimumSize: const Size(double.maxFinite, 52),
                                ),
                                child: Text(
                                  _isSigningIn
                                      ? 'auth_sign_in'.tr()
                                      : 'auth_sign_up'.tr(),
                                  style: currentTextStyle(context)
                                      .bodyLarge
                                      ?.copyWith(
                                        color: currentColorScheme(context)
                                            .onPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              );
                            },
                          ),

                          //Or continue with
                          _AlternativeSigning(),

                          //Not a member?
                          BouncingGestureDetector(
                            onTap: () {
                              context.read<AuthCubit>().changeAuthState();
                              // setState(() {
                              //   _isSigningIn = !_isSigningIn;
                              // });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: RichText(
                                text: TextSpan(
                                  style: currentTextStyle(context).bodyLarge,
                                  children: [
                                    TextSpan(
                                      text: _isSigningIn
                                          ? 'auth_not_registered'.tr()
                                          : 'auth_already_registered'.tr(),
                                      style: TextStyle(
                                        color: currentColorScheme(context)
                                            .onBackground,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'auth_change_screen'.tr(),
                                      style: TextStyle(
                                        color:
                                            currentColorScheme(context).primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField(this._emailController);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        key: const ValueKey('email'),
        controller: _emailController,
        validator: (text) {
          if (text == null || !emailRegExp.hasMatch(text)) {
            return 'auth_email_validator'.tr();
          }
          return null;
        },
        onSaved: (value) {
          //TODO
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'email'.tr(),
        ),
      ),
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField();

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        key: const ValueKey('password'),
        validator: (text) {
          if (text == null || text.length < 6) {
            return 'auth_password_validator'.tr();
          }
          return null;
        },
        onSaved: (value) {
          //TODO
        },
        decoration: InputDecoration(
          labelText: 'password'.tr(),
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
  }
}

class _AlternativeSigning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      buildWhen: (_, current) {
        return current.mapOrNull(
              signIn: (_) => true,
              signUp: (_) => true,
            ) ??
            false;
      },
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SizeTransition(
                sizeFactor:
                    animation.drive(CurveTween(curve: Curves.easeInOut)),
                child: child,
              ),
            );
          },
          child: state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            signIn: () {
              return Column(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      _LogoCard(
                        'assets/images/logos/google-icon.svg',
                        32,
                      ),
                      SizedBox(width: 30),
                      _LogoCard(
                        'assets/images/logos/apple-logo.svg',
                        36,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField({
    required bool isSigningIn,
  }) : _isSigningIn = isSigningIn;

  final bool _isSigningIn;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      buildWhen: (_, current) {
        return current.mapOrNull(
              signIn: (_) => true,
              signUp: (_) => true,
            ) ??
            false;
      },
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
          child: state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            signUp: () {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  key: const ValueKey('username'),
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
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _LogoCard extends StatelessWidget {
  const _LogoCard(
    this.logo,
    this.logoSize,
  );

  final String logo;
  final double logoSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: OutlinedButton(
        onPressed: () {
          //TODO
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: currentColorScheme(context).outlineVariant,
          ),
        ),
        child: SvgPicture.asset(
          logo,
          height: logoSize,
        ),
      ),
    );
  }
}
