import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';
import '../../core/ui/theme.dart';
import '../widget/avatar.dart';
import 'cubit/cubit.dart';

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
                            state.changeTheme(theme: theme == lightTheme ? darkTheme : lightTheme);
                          },
                          icon: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Icon(
                              key: ValueKey(theme),
                              theme != lightTheme ? Icons.dark_mode : Icons.dark_mode_outlined,
                            ),
                          ),
                        );
                      },
                    ),
                    // Transform.scale(
                    //   scale: 0.75,
                    //   child: ThemeSwitcher.withTheme(
                    //     builder: (context, state, theme) {
                    //       return Switch(
                    //         value: theme != lightTheme,
                    //         onChanged: (isLight) {
                    //           state.changeTheme(theme: isLight ? darkTheme : lightTheme);
                    //         },
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            actions: [
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(right: screenHorizontalMargin),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout),
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
                      Avatar(size: _profileAvatarSize, url: "https://picsum.photos/200/300"),
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
                  hintText: 'Опишите ваш стиль',
                  // labelText: 'Описание',
                ),
              ),
              const SizedBox(height: 24),
              const _ProfilePageTile(
                title: 'Ваши покупки',
                icon: Icons.shopping_cart,
              ),
              const SizedBox(height: 8),
              const _ProfilePageTile(
                title: 'Ваши биты',
                icon: Icons.folder_special,
              ),
              const SizedBox(height: 8),
              const _ProfilePageTile(
                title: 'Избранное',
                icon: Icons.favorite,
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
            child: FilledButton(
              onPressed: () {
                EasyLocalization.of(context)?.setLocale(Locale('en'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Выйти'),
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
