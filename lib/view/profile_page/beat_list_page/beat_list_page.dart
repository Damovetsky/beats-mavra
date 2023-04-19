import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../core/ui/kit/back_button.dart';
import '../../widget/beat_card_list/beat_card_list.dart';
import 'cubit/cubit.dart';

class BeatListPage extends StatefulWidget {
  final String title;
  final List<String> beatIds;

  const BeatListPage({
    super.key,
    required this.title,
    required this.beatIds,
  });

  @override
  State<BeatListPage> createState() => _BeatListPageState();
}

class _BeatListPageState extends State<BeatListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<BeatListCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: const AppBackButton(),
          title: Text(widget.title),
        ),
        body: BeatCardList(
          beatsIds: widget.beatIds,
          popupItems: [
            BeatCardPopupItem(icon: Icons.edit_outlined, title: 'Edit', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
