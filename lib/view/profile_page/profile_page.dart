import 'dart:async';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const.dart';
import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/shimmer_builder.dart';
import '../../core/ui/text_styles.dart';
import '../../core/ui/theme.dart';
import '../../main.dart';
import 'cubit/cubit.dart';
import 'widget/editable_avatar.dart';

const double _profileAvatarSize = 96;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _descriptionController = TextEditingController();

  ProfileCubit cubit = getIt.get<ProfileCubit>();

  @override
  void initState() {
    super.initState();
    unawaited(cubit.loadUser());
  }

  @override
  void didChangeDependencies() {
    Localizations.localeOf(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Text('profile_title'.tr()),
                const SizedBox(width: 8),
                _ProfileThemeButton(),
              ],
            ),
            actions: [
              _ProfileLanguagePopupButton(),
              Padding(
                padding: const EdgeInsets.only(right: screenHorizontalMargin),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                ),
              ),
            ],
          ),
          body: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return ListView(
                padding: const EdgeInsets.only(
                  left: screenHorizontalMargin,
                  right: screenHorizontalMargin,
                  top: 8,
                  bottom: 32,
                ),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          ShimmerBuilder(
                            data: state.mapOrNull(profile: (value) => value.user.avatarUrl),
                            loadingChild: circleShimmer(_profileAvatarSize / 2),
                            builder: (context, data) {
                              return EditableAvatar(
                                size: _profileAvatarSize,
                                url: data,
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                          _ProfileBalance(
                            balance: state.mapOrNull(
                              profile: (value) => 5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: _profileAvatarSize,
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: ShimmerBuilder(
                                  data: state.mapOrNull(
                                    profile: (value) => value.user.nickname,
                                  ),
                                  loadingChild: circleBordersShimmer(height: titleLargeHeight),
                                  builder: (context, data) {
                                    return Row(
                                      children: [
                                        Text(data, style: currentTextStyle(context).titleLarge),
                                        const SizedBox(width: 8),
                                        Icon(
                                          Icons.edit,
                                          color: currentColorScheme(context).onBackground.withOpacity(0.2),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 4),
                              Expanded(
                                child: ShimmerBuilder(
                                  data: state.mapOrNull(
                                    profile: (value) => 'example@example.com',
                                  ),
                                  loadingChild: circleBordersShimmer(height: titleLargeHeight),
                                  builder: (context, data) {
                                    return Text(
                                      data,
                                      style: currentTextStyle(context).bodyLarge?.copyWith(
                                            color: currentColorScheme(context).onBackground.withOpacity(0.5),
                                          ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  ShimmerBuilder(
                    data: state.mapOrNull(
                      profile: (value) => value.user.description,
                    ),
                    loadingChild: borderRadiusShimmer(
                      height: 96,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    builder: (context, data) {
                      return TextField(
                        controller: _descriptionController..text = data,
                        maxLines: 2,
                        decoration: InputDecoration(
                          hintText: 'profile_description_hint'.tr(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  _ProfilePageTile(
                    title: 'profile_your_purchases'.tr(),
                    icon: Icons.shopping_cart,
                  ),
                  const SizedBox(height: 8),
                  _ProfilePageTile(
                    title: 'profile_your_beats'.tr(),
                    icon: Icons.folder_special,
                  ),
                  const SizedBox(height: 8),
                  _ProfilePageTile(
                    title: 'profile_favorite'.tr(),
                    icon: Icons.favorite,
                  ),
                ],
              );
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
            child: FilledButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('profile_logout'.tr()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}

class _ProfileThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher.withTheme(
      builder: (context, state, theme) {
        return IconButton(
          onPressed: () {
            state.changeTheme(theme: theme == lightTheme ? darkTheme : lightTheme, isReversed: theme != lightTheme);
          },
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Icon(
              key: ValueKey(theme),
              theme != lightTheme ? Icons.sunny : Icons.dark_mode_outlined,
            ),
          ),
        );
      },
    );
  }
}

class _ProfileLanguagePopupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (locale) {
        localeGlobalKey.currentState?.updateLocale(locale);
      },
      icon: const Icon(Icons.language),
      itemBuilder: (context) {
        return context.supportedLocales.map(
          (locale) {
            String? flag;
            if (locale.countryCode != null) {
              flag = locale.countryCode!.toUpperCase().replaceAllMapped(
                    RegExp(r'[A-Z]'),
                    (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
                  );
            }

            return PopupMenuItem(
              value: locale,
              child: Row(
                children: [
                  Text(
                    '$flag',
                    style: currentTextStyle(context).headlineSmall,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '${languageLocalizedNames[locale.countryCode]}',
                    style: currentTextStyle(context).bodyMedium?.copyWith(),
                  ),
                ],
              ),
            );
          },
        ).toList(growable: false);
      },
    );
  }
}

class _ProfileBalance extends StatelessWidget {
  final double? balance;

  const _ProfileBalance({
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerBuilder(
      data: balance,
      loadingChild: circleBordersShimmer(height: 32, width: _profileAvatarSize),
      builder: (context, data) {
        return Container(
          height: 32,
          width: _profileAvatarSize,
          decoration: BoxDecoration(
            color: currentColorScheme(context).secondaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.toStringAsFixed(0),
                style: currentTextStyle(context).bodyMedium?.copyWith(
                      color: currentColorScheme(context).onSecondaryContainer,
                    ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.currency_ruble,
                size: 16,
                color: currentColorScheme(context).primary,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ProfilePageTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const _ProfilePageTile({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: currentColorScheme(context).surface,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: currentColorScheme(context).secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: currentColorScheme(context).primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(title, style: currentTextStyle(context).bodyLarge)),
          Icon(
            Icons.keyboard_arrow_right,
            color: currentColorScheme(context).onSecondaryContainer.withOpacity(0.5),
          ),
          const SizedBox(width: 16)
        ],
      ),
    );
  }
}
