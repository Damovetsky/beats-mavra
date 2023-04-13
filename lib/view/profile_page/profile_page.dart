import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/di/di.dart';
import '../../core/ui/dimens.dart';
import '../widget/avatar.dart';
import 'cubit/cubit.dart';

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
            top: 24,
          ),
          children: [
            Row(
              children: [
                Avatar(
                  size: 96,
                  url: "https://picsum.photos/200/300",
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name'),
                    Text('example@example.com'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
