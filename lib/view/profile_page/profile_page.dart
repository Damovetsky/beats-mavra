import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';
import '../widget/avatar.dart';
import 'cubit/cubit.dart';

const double _profileAvatarSize = 96;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ProfileCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: ListView(
          padding: const EdgeInsets.only(
            left: screenHorizontalMargin,
            right: screenHorizontalMargin,
            top: 16,
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
            const SizedBox(height: 16),
            const _ProfilePageTile(
              title: 'Ваши покупки',
              icon: Icons.shopping_cart,
            ),
            const SizedBox(height: 8),
            const _ProfilePageTile(
              title: 'Ваши биты',
              icon: Icons.shopping_cart,
            ),
            const SizedBox(height: 8),
            const _ProfilePageTile(
              title: 'Избранное',
              icon: Icons.shopping_cart,
            ),
          ],
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
          SizedBox(width: 16)
        ],
      ),

      // leading: Container(
      //   height: 48,
      //   width: 48,
      //   decoration: BoxDecoration(
      //     color: currentColorScheme(context).secondaryContainer,
      //     shape: BoxShape.circle,
      //   ),
      //   child: Icon(
      //     icon,
      //     color: currentColorScheme(context).primary,
      //   ),
      // ),
      // title: Text(title, style: currentTextStyle(context).bodyLarge),
      // trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}
