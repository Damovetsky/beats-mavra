import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const.dart';
import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';
import '../../core/ui/theme.dart';
import '../../main.dart';
import '../widget/avatar.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ProfileCubit>(),
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
                Row(
                  children: [
                    ThemeSwitcher.withTheme(
                      builder: (context, state, theme) {
                        return IconButton(
                          onPressed: () {
                            state.changeTheme(
                                theme: theme == lightTheme ? darkTheme : lightTheme, isReversed: theme != lightTheme);
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
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              PopupMenuButton(
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
              ),
              Padding(
                padding: const EdgeInsets.only(right: screenHorizontalMargin),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                ),
              ),
            ],
          ),
          body: ListView(
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
                      EditableAvatar(
                        size: _profileAvatarSize,
                        url: 'https://picsum.photos/200/300',
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 32,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: currentColorScheme(context).secondaryContainer,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '\$10500',
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
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: _profileAvatarSize,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text('Name', style: currentTextStyle(context).titleLarge),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.edit,
                              color: currentColorScheme(context).onBackground.withOpacity(0.2),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'example@example.com',
                          style: currentTextStyle(context).bodyLarge?.copyWith(
                                color: currentColorScheme(context).onBackground.withOpacity(0.5),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _descriptionController,
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'profile_description_hint'.tr(),
                ),
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
